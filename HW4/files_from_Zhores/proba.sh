#!/bin/bash

export OMP_NUM_THREADS=1

flag=$1
threads=$2
matrixdim=$3

#./gcc_run.sh $flag

for number in {1..5}; do
        ./manual_matmul_$flag.exe $threads $matrixdim >> res.txt 
done

echo "done"
