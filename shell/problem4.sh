#!/bin/sh
# Finds the largest palindrome from the product of two 3-digit numbers
# Starts at the 10^digit-1 since 10^digit has digit+1 digits, stops at the n-1th digit (eg 99 for 3 digit product)
# Complexity: O(n^2), two loops
# ... this takes forever! (about 35 minutes) switching to C brb

digit=3
counter1=$(( 10 ** $digit - 1 ))
counter2=$(( 10 ** $digit - 1 ))
to=$(( 10 ** ( $digit - 1 ) - 1  ))
max=0

while [ $counter1 -gt $to ]; do
    while [ $counter2 -gt $to ]; do
        reverse=$(echo "$(( 10#$counter1 * 10#$counter2 ))" | rev)
        is_palindrome=false
#        echo "$reverse $is_palindrome $(( $counter1 * $counter2 ))"
        if [ $(( 10#$counter1 * 10#$counter2 )) -eq $(( 10#$reverse )) ]; then
            is_palindrome=true
        fi
        if [ "$is_palindrome" = true ] && [ $max -lt $(( $counter1 * $counter2 )) ]; then
            max=$(( $counter1 * $counter2 ))
        fi
        let counter2--
    done
    counter2=$(( 10 ** $digit - 1 ))
    let counter1--
done
echo "Max palindrome: $max"

