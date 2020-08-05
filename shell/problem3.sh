#!/bin/sh
# Integer factorization, finds the largest prime factor

#boring solution
prime_number=600851475143
prime_factor=$(echo "$(factor $prime_number)" | awk '{print $NF}')
echo "Boring solution: $prime_factor"
#runs instantly: the factor command probably uses a database of some sort

#slow solution but we actually did something
#runs in O(n^2) (polynomial time) I think
prime_number=600851475143
length=$(bc <<< "scale=0; sqrt($prime_number)")
largest_prime=0

if [ $(( $prime_number % 2 )) -eq 0 ]; then
    largest_prime=2
    prime_number=$(( $prime_number / 2 ))
fi

for (( i=3; i<${length}; i+=2 ))
do
    while [ $(( $prime_number % $i )) -eq 0 ]; do
        largest_prime=$i
        prime_number=$(( $prime_number / $i ))
    done
done
echo "Slow but homemade solution: $largest_prime"
