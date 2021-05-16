#!/bin/bash -x

declare  -A  Array
echo "Enter the three inputs :: "
read a b c

result1=$(($a*$b+$c))
result2=$(($a+$b*$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

Array[result1]=$result1
Array[result2]=$result2
Array[result3]=$result3
Array[result4]=$result4

echo descending order : ${!compute[@]}


for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]}  ]; then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in ascending Order:"
for (( i=0; i <= 3; i++ )) 
do
  echo ${Array[$i]}
done
for (( i = 0; i <= 3; i++ ))
do
   for (( j = $i; j <= 3; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]}  ]; then
       t=${Array[$i]}
       Array[$i]=${Array[$j]}
       Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Descending Order:"
for (( i=0; i <= 3; i++ ))
do
  echo ${Array[$i]}

done




