#!/bin/bash -x

echo "Welcome Employee Wage Problem"

Full_Time=1
randomCheck=$((RANDOM%3))
Emp_Rate_Perhr=20
if [ $Full_Time -eq $randomCheck ]
then
    empHr=8
else
    salary=0
fi
salary=$(($Emp_Rate_Perhr * $empHr))
echo $salary

