// Todo: This is an awful hack
//       I'm trying this because Xcode 7.3.1 seems to think that size_t is undefined.
#define __STDC_WANT_LIB_EXT1__ 1
#define __STDC_WANT_LIB_EXT1__

#include <stddef.h>         // MDC El Capitan branch
