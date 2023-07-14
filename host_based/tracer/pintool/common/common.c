// Common code to be used by both the wasmtime interpreter to turn on and off the tracing and the 
// pintool to check if the tracing is on or off
#include <stddef.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>

#define SHARED_MEMORY_KEY 123442
// Include a sem here to port the tracing itself to the host

#ifndef CREATE_LOC
    #define CREATE_LOC 1
    

    typedef struct {
        // Define your shared data variables here
        char lock;
    } SharedLock;


    SharedLock* sharedVal;

    // The lock helps to interrupt the recording of the traces is the host code is executed
    // Call this from the traacer pintool, not from the host interpreter
    void create_lock() {
        int shmid = shmget(SHARED_MEMORY_KEY, sizeof(SharedLock), IPC_CREAT | 0666);
        if (shmid == -1) {
            perror("shmget");
            
        }

        sharedVal = (SharedLock*)shmat(shmid, NULL, 0);
    }
#endif