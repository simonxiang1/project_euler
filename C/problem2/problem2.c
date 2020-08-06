/* Project Euler problem 1 in C! */
/* Variable definitions are in the config.h file */
#include <stdio.h>
#include "config.h"

int main () {
    while ( ( cur + prev ) < max ) {
        int temp = cur;
        cur += prev;
        prev = temp;
        if ( cur % 2 == 0 ) {
            sum += cur;
        }
    }
    printf("Sum of even fibonacci numbers: %d \n", sum);

    return 0;
}
