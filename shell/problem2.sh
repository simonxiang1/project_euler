#!/bin/sh
# Adds even fibonnaci numbers

#O(n) time, but only 33 iterations so still fast
prev=0
cur=1
max=4000000
sum=0

while [ $(( $cur + $prev )) -lt $max ]; do
    temp=$cur
    cur=$(( $cur + $prev ))
    prev=$temp
    if [ $(( $cur % 2 )) -eq 0 ]; then
        let sum+=$cur
    fi
done
echo "Sum of even fibonacci numbers: $sum"

