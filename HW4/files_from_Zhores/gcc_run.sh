#!/bin/bash

flag=$1

module load compilers/gcc-4.8.5

gcc manual_matmul.c -fopenmp -$flag -o manual_matmul_$flag.exe

