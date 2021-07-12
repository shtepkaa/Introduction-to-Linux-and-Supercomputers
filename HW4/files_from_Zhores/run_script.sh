#!/bin/bash

filename=$1
>$filename.txt
flags=(g Og O1 O2 O3 Ofast)
threads=(2 4 8 12 24)
matrixdims=(1024 2048 4096 8192)

for flag in "${flags[@]}"; do
	for thread in "${threads[@]}"; do
		for matrixdim in "${matrixdims[@]}"; do
			sbatch -N 1 -c 1 script.sh $filename $flag $thread $matrixdim
		done
	done
done
