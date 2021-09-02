#!/bin/bash -x

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHrs=20;
numWorkingHrs=0;
numWorkingDay=20;
limitHrs=100;
workingdays=1;

while [[ $numWorkingHrs -le $limitHrs && $workingdays -le $numWorkingDay ]]
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
numWorkigHrs=$(($numWorkingHrs + $empHrs));
(( workingday++ ))
salary=$(($empRatePerHrs * $empHrs));
totalSalary=$(($totalSalary + $salary));
done
