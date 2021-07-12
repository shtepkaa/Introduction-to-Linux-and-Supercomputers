#!/bin/bash

export OMP_NUM_THREADS=1

filename=$1
flag=$2
threads=$3
matrixdim=$4

#gcc manual_matmul.c -fopenmp -$flag -o manual_matmul.exe

>${flag}_${threads}_${matrixdim}.txt

for number in {1..10}; do
        ./manual_matmul_${flag}.exe $threads $matrixdim >>${flag}_${threads}_${matrixdim}.txt
done

cat ./${flag}_${threads}_${matrixdim}.txt | awk -v f=$flag -v t=$threads -v m=$matrixdim 'BEGIN{sum=0;sumsq=0}{sum+=$3;sumsq+=$3*$3}END{print "flag=" f ", threads=" t ", matrix dimension=" m ", average time=" sum/NR ", standard deviation of time=" sqrt(sumsq/NR-(sum/NR)**2) ", number of runs=" NR}'>>./$filename.txt

#echo "done"
