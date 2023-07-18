// Common code to be used by both the wasmtime interpreter to turn on and off the tracing and the 
// pintool to check if the tracing is on or off
#include <stddef.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>

// Include a sem here to port the tracing itself to the host
#define SHARED_MEMORY_KEY 123442

typedef struct {
    // Define your shared data variables here
    char lock;
} SharedLock;


SharedLock* sharedVal;


// Linux specific code

// The lock helps to interrupt the recording of the traces is the host code is executed
// Call this from the traacer pintool, not from the host interpreter
void create_lock() {        
    int shmid = shmget(SHARED_MEMORY_KEY, sizeof(SharedLock), IPC_CREAT | 0666);
    if (shmid == -1) {
        perror("shmget");

        printf("Cannot create shmemory");
        exit(1);    
    }
    printf("Shared memory created\n");
    sharedVal = (SharedLock*)shmat(shmid, NULL, 0);
    sharedVal->lock = 1;
}