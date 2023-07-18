#include "common.c"
// Notice that this approach can be done with Valgrind as well.
// Yet, valgrind offers different features and it is slower in general
// Pin, on the other hand, allows us to

void attach() {
    // This is different for macos

    int shmid = shmget(SHARED_MEMORY_KEY, sizeof(SharedLock), 0);
    if (shmid == -1) {
        perror("shmget");
        printf("Cannot attach shmemory");
        return;
    }
    sharedVal = (SharedLock*)shmat(shmid, NULL, 0);
}


// Set the lock to open or close to interrupt the recording of the traces
int set_lock(char val) {
    sharedVal->lock = val;
    return 0;
}
