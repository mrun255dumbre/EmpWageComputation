#!/bin/bash -x

echo "welcome to Emp Wage Computation"

function getWorkHrs ()
{
        Random=((RANDOM%2))
        if [ $Random -eq 1 ]
        then
                echo "Employee is Present"
        else
                echo "Employee is Absent"
        fi
}

