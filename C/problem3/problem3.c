/* Problem 2 */
/* Variable definitions are in the config.h file */
/* Compile with gcc problem3.c -lm on a unix based system */
#include <stdio.h>
#include <math.h>
#include "config.h"

int main () {

    len = sqrt (prime);

    if ( prime % 2 == 0 ) {
        max = 2;
        prime = prime / 2;
    }

    for ( int i=3; i<len; i+=2 ) {
        while ( prime % i == 0 ) {
           max = i;
           prime = prime / i;
        }
    }

    printf ("Largest prime factor: %d \n", max);

    return 0;
}
