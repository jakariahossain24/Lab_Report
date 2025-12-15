#!/bin/bash

check_prime() {
    num=$1
    if [ $num -le 1 ];
 then
        echo "$num is NOT a prime number"
        return
    fi

    for ((i = 2; i <= num / 2; i++))
    do
        if [ $(( num % i)) -eq 0 ];
 then
            echo "$num is NOT a prime number"
            return
        fi
    done
    echo "$num is a PRIME number"
}

check_leap() {
    year=$1
    if (( (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) ));
then
        echo "$year is a Leap Year"
    else
        echo "$year is NOT a Leap Year"
    fi
}

sum_series() {
    n=$1
    sum=0
    for ((i=1; i<=n; i++))
    do
        sum=$((sum + i))
    done
    echo "Sum from 1 to $n = $sum"
}

echo "Enter a number:"
read num

while true
do
    echo ""
    echo "1. Check Prime"
    echo "2. Check Leap Year"
    echo "3. Print Sum of Series (1 to n)"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) check_prime $num ;;
        2) check_leap $num ;;
        3) sum_series $num ;;
        4) echo "Exiting...";
 break ;;
        *) echo "Invalid choice!" ;;
    esac
done
