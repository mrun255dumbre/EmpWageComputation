#!/bin/bash -x

echo "welcome to Emp Wage Computation"
empWagePerHr=20;
numWorkingDays=20;
maxWorkHrs=100;
totalWorkHrs=0;

function getWorkHrs ()
{
        Random=$((RANDOM%3))
        case $Random in
                1)
                        empHrs=8
                        ;;
                2)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac

}


cnt=1;
while [[ $cnt -lt $numWorkingDays  && $totalWorkHrs -lt $maxWorkHrs ]]
do
        getWorkHrs
        totalWorkHrs=$(( $totalWorkHrs + $empHrs ))
        ((cnt++))
done

totalSalary=$(( $totalWorkHrs * $empWagePerHr ))
echo "Daily employee wage : " $totalSalary
