#!/bin/bash

# Check arguments

if [ $# -ne 5 ] ; then
    echo "Usage: $0 core_id l1_size l2_size l3_size ram_size"
    exit 1
fi

core_id=$1
l1_size=$2
l2_size=$3
l3_size=$4
ram_size=$5

# 1 array

directories="load ntstore reduc store"
for directory in $directories ; do 
    cd $directory
    echo "TEST: $directory"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L1.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L2.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l3_size* 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L3.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_DRAM.dat"
    cd ..
done

cd pc
echo "TEST: pc"
taskset -c $core_id ./pc $(( $l1_size * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L1.dat
taskset -c $core_id ./pc $(( $l2_size * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L2.dat
taskset -c $core_id ./pc $(( $l3_size * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L3.dat
taskset -c $core_id ./pc $(( $ram_size * 2**10 )) 1000 | cut -d';' -f1,9 > pc_DRAM.dat
cd ..

# 2 arrays

directories="copy dotprod"
for directory in $directories ; do 
    cd $directory
    echo "TEST: $directory"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L1.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L2.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l3_size* 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_L3.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > $directory"_DRAM.dat"
    cd ..
done

cd memcpy
echo "TEST: memcpy"
taskset -c $core_id ./memcpy $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > memcpy_L1.dat
taskset -c $core_id ./memcpy $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > memcpy_L2.dat
taskset -c $core_id ./memcpy $(( $l3_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > memcpy_L3.dat
taskset -c $core_id ./memcpy $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > memcpy_DRAM.dat
cd ..

