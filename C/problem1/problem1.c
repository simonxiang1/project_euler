/* Project Euler problem 1 in C! */
/* Variable definitions are in the config.h file */
#include <stdio.h>
#include "config.h"

int main () {
    for ( int i=1; i<cap; i++ ) {
        if ( i % mod1 == 0 || i % mod2 == 0 ) {
            var+=i;
        }
    }
    printf("Standard solution: %d \n", var);

    return 0;
}
