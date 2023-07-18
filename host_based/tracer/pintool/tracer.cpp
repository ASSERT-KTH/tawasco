// DISCLAIMER: This code is partially migrated from the Daredevil codebase

#include "pin.H"
#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <iomanip>
#include <map>
#include <sys/time.h>
#include <sys/syscall.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include "common/common.c"


using namespace std;
using std::cerr;
using std::endl;

// To manage IntelPIN locks
PIN_LOCK PINL;

// Get 1 if we can write 
char get_lock() {
    
    char lock1 = sharedVal->lock;
    
    return lock1;
}

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */
ofstream TraceFile;

long long bigcounter=0; // Ready for 4 billions of instructions
long long currentbbl=0;

ADDRINT main_begin;
ADDRINT main_end;

enum InfoTypeType { T, C, B, R, I, W };
InfoTypeType InfoType=T;
std::string TraceName;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
                            "o", "trace-full-info.txt", "specify trace file name");
KNOB<BOOL> KnobLogIns(KNOB_MODE_WRITEONCE, "pintool",
                      "i", "1", "log all instructions");
KNOB<BOOL> KnobLogMem(KNOB_MODE_WRITEONCE, "pintool",
                      "m", "1", "log all memory accesses");
KNOB<BOOL> KnobLogBB(KNOB_MODE_WRITEONCE, "pintool",
                     "b", "1", "log all basic blocks");
KNOB<BOOL> KnobLogCall(KNOB_MODE_WRITEONCE, "pintool",
                       "c", "1", "log all calls");
KNOB<BOOL> KnobLogCallArgs(KNOB_MODE_WRITEONCE, "pintool",
                           "C", "0", "log all calls with their first three args");
// TODO this
KNOB<string> KnobLogFilter(KNOB_MODE_WRITEONCE, "pintool",
                        "f", "1", "(0) no filter (1) filter system libraries (2) filter all but main exec (0x400000-0x410000) trace only specified address range");
KNOB<string> KnobLogFilterLive(KNOB_MODE_WRITEONCE, "pintool",
                        "F", "0", "(0) no live filter (0x400000:0x410000) use addresses as start:stop live filter");
KNOB<INT> KnobLogFilterLiveN(KNOB_MODE_WRITEONCE, "pintool",
                           "n", "0", "which occurence to log, 0=all (only for -F start:stop filter)");
KNOB<BOOL> KnobQuiet(KNOB_MODE_WRITEONCE, "pintool",
                       "q", "0", "be quiet under normal conditions");

INT32 Usage()
{
    cerr << "This tool traces each executed instruction. Pause and unpause the tracing if a shared boolean is set to true from a wasmtime execution.\n"
            "\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;

    return -1;
}

 
bool cannot_trace() {
    return get_lock() == 1;
}

static ADDRINT WriteAddr;
static INT32 WriteSize;

static VOID RecordWriteAddrSize(ADDRINT addr, INT32 size)
{
    WriteAddr = addr;
    WriteSize = size;
}

static VOID RecordMemHuman(ADDRINT ip, CHAR r, ADDRINT addr, UINT8* memdump, INT32 size, BOOL isPrefetch)
{
    // Notice that we do not print the ip argument
    TraceFile << "[" << r << "]" << setw(10) << dec << bigcounter << hex << setw(16) << (void *) 0 << "                                                   "
              << " " << setw(18) << (void *) addr << " size="
              << dec << setw(2) << size << " value="
              << hex << setw(18-2*size);
    if (!isPrefetch)
    {
        switch(size)
        {
        case 0:
            TraceFile << setw(1);
            break;

        case 1:
            TraceFile << "0x" << setfill('0') << setw(2);
            TraceFile << static_cast<UINT32>(*memdump);
            TraceFile << setfill(' ');
            break;

        case 2:
            TraceFile << "0x" << setfill('0') << setw(4);
            TraceFile << *(UINT16*)memdump;
            break;

        case 4:
            TraceFile << "0x" << setfill('0') << setw(8);
            TraceFile << *(UINT32*)memdump;
            break;

        case 8:
            TraceFile << "0x" << setfill('0') << setw(16);
            TraceFile << *(UINT64*)memdump;
            break;

        default:
            for (INT32 i = 0; i < size; i++)
            {
                TraceFile << " " << setfill('0') << setw(2) << static_cast<UINT32>(memdump[i]);
            }
            break;
        }
    }
    TraceFile << setfill(' ') << endl;
}

static VOID RecordMem(ADDRINT ip, CHAR r, ADDRINT addr, INT32 size, BOOL isPrefetch)
{
    UINT8 memdump[256];
    if(cannot_trace()) return;
    
    PIN_GetLock(&PINL, ip);
    if ((size_t)size > sizeof(memdump))
    {
        PIN_ReleaseLock(&PINL);
        return;
    }
    PIN_SafeCopy(memdump, (void *)addr, size);
    switch (r) {
        case 'R':
            if (InfoType >= R) bigcounter++;
            InfoType=R;
            break;
        case 'W':
            if (InfoType >= W) bigcounter++;
            InfoType=W;
            break;
    }
    RecordMemHuman(ip, r, addr, memdump, size, isPrefetch);
           
    PIN_ReleaseLock(&PINL);
}


static VOID RecordMemWrite(ADDRINT ip)
{
    RecordMem(ip, 'W', WriteAddr, WriteSize, false);
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID* v)
{    
    TraceFile.setf(ios::showbase);
    TraceFile.close();
}


/* ================================================================================= */
/* This is called every time a MODULE (dll, etc.) is LOADED                          */
/* ================================================================================= */
void ImageLoad_cb(IMG Img, void *v)
{
    // Filter out, do not trace if the shared memory says so
    std::string imageName = IMG_Name(Img);
    ADDRINT lowAddress = IMG_LowAddress(Img);
    ADDRINT highAddress = IMG_HighAddress(Img);
    PIN_GetLock(&PINL, 0);

    if(IMG_IsMainExecutable(Img))
    {
        if(!cannot_trace()){
            TraceFile << "[-] Analysing main image: " << imageName << endl;
            TraceFile << "[-] Image base: 0x" << hex << lowAddress  << endl;
            TraceFile << "[-] Image end:  0x" << hex << highAddress << endl;
        }

        main_begin = lowAddress;
        main_end = highAddress;
    } else {
        if(!cannot_trace()){
            TraceFile << "[-] Loaded module: " << imageName << endl;
            TraceFile << "[-] Module base: 0x" << hex << lowAddress  << endl;
            TraceFile << "[-] Module end:  0x" << hex << highAddress << endl; 
        }
    }
    PIN_ReleaseLock(&PINL);
}


/* ================================================================================= */
/* Log some information related to thread execution                                  */
/* ================================================================================= */
void ThreadStart_cb(THREADID threadIndex, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    if(cannot_trace()) return;
    PIN_GetLock(&PINL, threadIndex + 1);
    if (InfoType >= T) bigcounter++;
    InfoType=T;
    TraceFile << "[T]" << setw(10) << dec << bigcounter << hex << " Thread 0x" << PIN_ThreadUid() << " started. Flags: 0x" << hex << flags << endl;    
    PIN_ReleaseLock(&PINL);
}


void ThreadFinish_cb(THREADID threadIndex, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    if(cannot_trace()) return;
    PIN_GetLock(&PINL, threadIndex + 1);
    TraceFile << "[T]" << setw(10) << dec << bigcounter << hex << " Thread 0x" << PIN_ThreadUid() << " finished. Code: " << dec << code << endl;    
    PIN_ReleaseLock(&PINL);
}

/* ===================================================================== */
/* Helper Functions for Instruction_cb                                   */
/* ===================================================================== */

VOID printInst(ADDRINT ip, string *disass, INT32 size)
{
    if(cannot_trace()) return;
    UINT8 v[32];
    
    PIN_GetLock(&PINL, ip);
    if (InfoType >= I) bigcounter++;
    InfoType=I;
    PIN_SafeCopy(v, (void *)ip, size);
    TraceFile << "[I]" << setw(10) << dec << bigcounter << hex << setw(16) << (void *)ip << "    " << setw(40) << left << *disass << right;
    TraceFile << setfill('0');
    for (INT32 i = 0; i < size; i++)
    {
        TraceFile << " " << setfill('0') << setw(2) << static_cast<UINT32>(v[i]);
    }
    TraceFile << setfill(' ');
    TraceFile << endl;
    PIN_ReleaseLock(&PINL);
}


/* ===================================================================== */
/* Helper Functions for Trace_cb                                         */
/* ===================================================================== */
void LogBasicBlock(ADDRINT addr, UINT32 size)
{
    if(cannot_trace()) return;
    PIN_GetLock(&PINL, addr);
    if (InfoType >= B) bigcounter++;
    InfoType=B;
    currentbbl=bigcounter;
    TraceFile << "[B]" << setw(10) << dec << bigcounter << hex << setw(16) << (void *) addr << " loc_" << hex << addr << ":";
    TraceFile << " // size=" << dec << size;
    TraceFile << " thread=" << "0x" << hex << PIN_ThreadUid() << endl;
    PIN_ReleaseLock(&PINL);
}


/* ================================================================================= */
/* This is called for each instruction                                               */
/* ================================================================================= */
VOID Instruction_cb(INS ins, VOID *v)
{
    // TODO 
    // Exclude instruction address
    
    if (KnobLogMem.Value()) {

        if (INS_IsMemoryRead(ins))
        {
            INS_InsertPredicatedCall(
                ins, IPOINT_BEFORE, (AFUNPTR)RecordMem,
                IARG_INST_PTR,
                IARG_UINT32, 'R',
                IARG_MEMORYREAD_EA,
                IARG_MEMORYREAD_SIZE,
                IARG_BOOL, INS_IsPrefetch(ins),
                IARG_END);
        }

        if (INS_HasMemoryRead2(ins))
        {
            INS_InsertPredicatedCall(
                ins, IPOINT_BEFORE, (AFUNPTR)RecordMem,
                IARG_INST_PTR,
                IARG_UINT32, 'R',
                IARG_MEMORYREAD2_EA,
                IARG_MEMORYREAD_SIZE,
                IARG_BOOL, INS_IsPrefetch(ins),
                IARG_END);
        }

        // instruments stores using a predicated call, i.e.
        // the call happens iff the store will be actually executed
        if (INS_IsMemoryWrite(ins))
        {
            INS_InsertPredicatedCall(
                ins, IPOINT_BEFORE, (AFUNPTR)RecordWriteAddrSize,
                IARG_MEMORYWRITE_EA,
                IARG_MEMORYWRITE_SIZE,
                IARG_END);

            if (INS_HasFallThrough(ins))
            {
                INS_InsertCall(
                    ins, IPOINT_AFTER, (AFUNPTR)RecordMemWrite,
                    IARG_INST_PTR,
                    IARG_END);
            }
            if (INS_IsControlFlow(ins))
            {
                INS_InsertCall(
                    ins, IPOINT_TAKEN_BRANCH, (AFUNPTR)RecordMemWrite,
                    IARG_INST_PTR,
                    IARG_END);
            }

        }
    }
    if (KnobLogIns.Value()) {
        string* disass = new string(INS_Disassemble(ins));
        INS_InsertCall(
            ins, IPOINT_BEFORE, (AFUNPTR)printInst,
            IARG_INST_PTR,
            IARG_PTR, disass,
            IARG_UINT32, INS_Size(ins),
            IARG_END);
    }
}



void LogCallAndArgs(ADDRINT ip, ADDRINT arg0, ADDRINT arg1, ADDRINT arg2)
{
    if(cannot_trace()) return;
    string nameFunc = "";
    string nameArg0 = "";
    string nameArg1 = "";
    string nameArg2 = "";

    nameFunc = RTN_FindNameByAddress(ip);
    if (KnobLogCallArgs.Value()) {
        nameArg0 = RTN_FindNameByAddress(arg0);
        nameArg1 = RTN_FindNameByAddress(arg1);
        nameArg2 = RTN_FindNameByAddress(arg2);
    }

    PIN_GetLock(&PINL, ip);
    if (InfoType >= C) bigcounter++;
    InfoType=C;
    TraceFile << "[C]" << setw(10) << dec << bigcounter << hex << " Calling function 0x" << ip << "(" << nameFunc << ")";
    if (KnobLogCallArgs.Value()) {
        TraceFile << " with args: ("
                    << (void *) arg0 << " (" << nameArg0 << " ), "
                    << (void *) arg1 << " (" << nameArg1 << " ), "
                    << (void *) arg2 << " (" << nameArg2 << " )";
    }
    TraceFile << endl;
    
    PIN_ReleaseLock(&PINL);
}


void LogIndirectCallAndArgs(ADDRINT target, BOOL taken, ADDRINT arg0, ADDRINT arg1, ADDRINT arg2)
{
    if(cannot_trace()) return;
    if (!taken)
        return;
    LogCallAndArgs(target, arg0, arg1, arg2);
}


/* ================================================================================= */
/* This is called for each Trace. Traces usually begin at the target of a taken      */
/* branch and end with an unconditional branch, including calls and returns.         */
/* Pin guarantees that a trace is only entered at the top,                           */
/* but it may contain multiple exits.                                                */
/* ================================================================================= */
void Trace_cb(TRACE trace, void *v)
{
    // if(cannot_trace()) return;
    /* Iterate through basic blocks */
    for(BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        INS head = BBL_InsHead(bbl);
        /* Instrument function calls? */
        if(KnobLogCall.Value() || KnobLogCallArgs.Value())
        {
            /* ===================================================================================== */
            /* Code to instrument the events at the end of a BBL (execution transfer)                */
            /* Checking for calls, etc.                                                              */
            /* ===================================================================================== */
            INS tail = BBL_InsTail(bbl);

            if(INS_IsCall(tail))
            {
                if(INS_IsDirectControlFlow(tail))
                {
                    const ADDRINT target = INS_DirectControlFlowTargetAddress(tail);

                    INS_InsertPredicatedCall(
                        tail,
                        IPOINT_BEFORE,
                        AFUNPTR(LogCallAndArgs),            // Function to jump to
                        IARG_ADDRINT,                       // "target"'s type
                        target,                             // Who is called?
                        IARG_FUNCARG_ENTRYPOINT_VALUE,      // Arg_0 value
                        0,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,      // Arg_1 value
                        1,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,      // Arg_2 value
                        2,
                        IARG_END
                    );
                }
                else
                {
                    INS_InsertCall(
                        tail,
                        IPOINT_BEFORE,
                        AFUNPTR(LogIndirectCallAndArgs),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_BRANCH_TAKEN,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        0,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        1,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        2,
                        IARG_END
                    );
                }
            }
            else
            {
                /* Other forms of execution transfer */
                RTN rtn = TRACE_Rtn(trace);
                // Trace jmp into DLLs (.idata section that is, imports)
                if(RTN_Valid(rtn) && SEC_Name(RTN_Sec(rtn)) == ".idata")
                {
                    INS_InsertCall(
                        tail,
                        IPOINT_BEFORE,
                        AFUNPTR(LogIndirectCallAndArgs),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_BRANCH_TAKEN,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        0,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        1,
                        IARG_FUNCARG_ENTRYPOINT_VALUE,
                        2,
                        IARG_END
                    );
                }
            }
        }
        /* Instrument at basic block level? */
        if(KnobLogBB.Value())
        {
            /* instrument BBL_InsHead to write "loc_XXXXX", like in IDA Pro */
            INS_InsertCall(head, IPOINT_BEFORE, AFUNPTR(LogBasicBlock), IARG_ADDRINT, BBL_Address(bbl), IARG_UINT32, BBL_Size(bbl), IARG_END);
        }
    }
}


int  main(int argc, char *argv[])
{
    // This creates the shared mem to interact with the tracer bin that executes Wasm
    create_lock();
    PIN_InitSymbols();
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    TraceFile.open(KnobOutputFile.Value().c_str());
    
    IMG_AddInstrumentFunction(ImageLoad_cb, 0);
    PIN_AddThreadStartFunction(ThreadStart_cb, 0);
    PIN_AddThreadFiniFunction(ThreadFinish_cb, 0);
    TRACE_AddInstrumentFunction(Trace_cb, 0);
    INS_AddInstrumentFunction(Instruction_cb, 0);
    PIN_AddFiniFunction(Fini, 0);

    cerr << "Starting program\n";
    cerr << "Tracing: " << cannot_trace() << "\n";
    PIN_StartProgram();
    return 0;
}