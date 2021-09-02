
#!/bin/bash -x

IS_PART_TIME=1
IS_FULL_TIME=2
Emp_Rate_Perhr=20

randomCheck=$((RANDOM%3))
if [ $IS_PART_TIME -eq $randomCheck ]
then
    empHr=4
elif [ $IS_FULL_TIME -eq $randomCheck ]
then
    empHr=8
else
    salary=0
fi
salary=$(($Emp_Rate_Perhr * $empHr));
echo $salary
