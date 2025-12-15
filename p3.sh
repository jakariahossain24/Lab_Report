#!/bin/bash

pass=0
fail=0

read -p "Enter number of students: " n

for ((i=1; i<=n; i++))
do
    echo ""
    read -p "Enter Student ID: " id
    read -p "Enter marks of subject 1: " m1
    read -p "Enter marks of subject 2: " m2
    read -p "Enter marks of subject 3: " m3

    total=$((m1 + m2 + m3))
    percentage=$((total * 100 / 300))

    if [ $percentage -ge 80 ]; then
        grade="A+"
        result="Pass"
        pass=$((pass + 1))
    elif [ $percentage -ge 70 ]; then
        grade="A"
        result="Pass"
        pass=$((pass + 1))
    elif [ $percentage -ge 60 ]; then
        grade="A-"
        result="Pass"
        pass=$((pass + 1))
    elif [ $percentage -ge 50 ]; then
        grade="B"
        result="Pass"
        pass=$((pass + 1))
    else
        grade="F"
        result="Fail"
        fail=$((fail + 1))
    fi

    echo "Student ID: $id"
    echo "Total Marks: $total"
    echo "Percentage: $percentage%"
    echo "Grade: $grade"
    echo "Result: $result"
done

echo ""
echo "Total Students: $n"
echo "Passed: $pass"
echo "Failed: $fail"

