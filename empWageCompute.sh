#!/bin/bash -x

echo "welcome to Emp Wage Computation"
empWagePerHr=20;

function getWorkHrs ()
{
        Random=((RANDOM%2))
        if [ $Random -eq 1 ]
        then
                echo "Employee is Present"
		empHrs=8;
        else
                echo "Employee is Absent"
 		empHrs=0;
	fi
}

getWorkHrs

salary=$(( $empWagePerHr * $empHrs ))
echo "Daily employee wage : " $salary
