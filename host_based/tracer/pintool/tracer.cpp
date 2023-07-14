#include "pin.H"
#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <iomanip>
#include <map>
#include "sqlite3.h"
#include <sys/time.h>
#include <sys/syscall.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include "common/common.c"

#ifndef GIT_DESC
#define GIT_DESC "(unknown version)"
#endif //GIT_DESC
using namespace std;
/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */


void attach() {
    // TODO Create the shared mem

    //printf("Getting shared memory\n");
    int shmid = shmget(SHARED_MEMORY_KEY, sizeof(SharedLock), 0);
    if (shmid == -1) {
        perror("shmget");

        printf("Cannot attach shmemory");
        return;
    }

    sharedVal = (SharedLock*)shmat(shmid, NULL, 0);
}

int  main(int argc, char *argv[])
{
    // attach();
    PIN_InitSymbols();
    
    PIN_StartProgram();

    return 0;
}