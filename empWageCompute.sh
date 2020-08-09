#!/bin/bash -x

echo "welcome to Emp Wage Computation"
empWagePerHr=20;

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

getWorkHrs

salary=$(( $empWagePerHr * $empHrs ))
echo "Daily employee wage : " $salary
