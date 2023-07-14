#include "common.c"
// Notice that this approach can be done with Valgrind as well.
// Yet, valgrind offers different features and it is slower in general
// Pin, on the other hand, allows us to
#ifndef SET_LOCK
    #define SET_LOCK 1

// Set the lock to open or close to interrupt the recording of the traces
int set_lock(char val) {
    sharedVal->lock = val;
    return 0;
}

#endif