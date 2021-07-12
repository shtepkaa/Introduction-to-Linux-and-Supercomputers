#!/bin/bash

path=/home/olga/Linux_course/HW3/assignment3 #change this path in other PC

#__________________________________________________________________________________________
#if there are no these files/directories, comment these two lines 
rm $path/libs/src1/* $path/libs/src2/* $path/src1/*.o $path/src2/*.o $path/*.out
rmdir $path/libs/* 
#__________________________________________________________________________________________
#create directories where static libs will be save
mkdir $path/libs/src1 $path/libs/src2
#__________________________________________________________________________________________
#create first static lib
src1_files=("liblib1" "liblib2" "liblib3")
for file in "${src1_files[@]}"
do 
	gcc -c $path/src1/$file.c -o $path/src1/$file.o
done
ar rc $path/libs/src1/minilib.a $path/src1/liblib1.o $path/src1/liblib2.o $path/src1/liblib3.o
#compile result
gcc main1.c $path/libs/src1/minilib.a -o main1.out -lm
#__________________________________________________________________________________________
#create second static lib
src2_files=("liblib1" "liblib2")
for file in "${src2_files[@]}"
do 
        gcc -c $path/src2/$file.c -o $path/src2/$file.o
done
ar rc $path/libs/src2/minilib.a $path/src2/liblib1.o $path/src2/liblib2.o
#compile result
gcc main2.c $path/libs/src2/minilib.a -o main2.out -lm
#__________________________________________________________________________________________
#ouputting results
main_files=("main1" "main2")
for file in "${main_files[@]}"
do
	./$file.out
done
