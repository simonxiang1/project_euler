#!/bin/sh
# Project Euler problem 1

#standard solution, O(n) time
#with n=1000000, runtime is 6 seconds
var=0
cap=1000
mod1=3
mod2=5

for (( i=1; i<${cap}; i++ ))
do
    if [ $(($i % $mod1)) -eq 0 ] || [ $(($i % $mod2)) -eq 0 ]; then
        let var+=$i
    fi
done
echo "Standard solution: $var" 

#efficient solution O(1) time
#with n=1000000, runtime is instantly
cap=1000
mod1=3
mod2=5
mod12=$(( $mod1 * $mod2 ))

capmod1=$(( ( $cap - 1 ) / $mod1 )) 
capmod2=$(( ( $cap - 1 ) / $mod2 )) 
capmod12=$(( ( $cap - 1 ) / $mod12 )) 
summod1=$(( $mod1 * ( ( $capmod1 * ( $capmod1 + 1 ) ) / 2 ) ))
summod2=$(( $mod2 * ( ( $capmod2 * ( $capmod2 + 1 ) ) / 2 ) ))
summod12=$(( $mod12 * ( ( $capmod12 * ( $capmod12 + 1 ) ) / 2 ) ))
echo "Efficient Solution: $(( $summod1 + $summod2 - $summod12 ))"

