#!/bin/bash

echo "Enter the three inputs :: "
read a b c

result=$(($a%$b+$c))
echo $result

