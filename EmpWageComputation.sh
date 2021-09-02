#!/bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHrs=20;
workingHrs=15;
numWorkingDay=20;
day=0;

while [ $day -le $numWorkingDay -a $day -le $workingHrs ]
do
  empCheck=$((RANDOM%3));
          case $empCheck in
                $isFullTime)
                      empHrs=8
                       ;;
               $isPartTime)
                      empHrs=4
                       ;;
                    *)
                    empHrs=0
                       ;;
esac
(( day++ ))
salary=$(($empHrs*$empRatePerHrs));
totalSalary=$(($totalSalary+$salary));
done

