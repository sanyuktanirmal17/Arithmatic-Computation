#!/bin/bash -x

declare  -A  comput
echo "Enter the three inputs :: "
read a b c

result1=$(($a*$b+$c))
result2=$(($a+$b*$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

compute[result1]=$result1
compute[result2]=$result2
compute[result3]=$result3
compute[result4]=$result4

echo  All results : ${!compute[@]}
