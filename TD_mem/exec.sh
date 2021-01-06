#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "Usage: $0 core_id"
    exit 1
fi

core_id=$1

directories="copy dotprod load ntstore reduc store"

for directory in $directories
do
    cd $directory
    echo "TEST: $directory"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( 24 * 2**10 )) 1000 | cut -d';' -f1,9 > $directory"_L1.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( 200 * 2**10 )) 1000 | cut -d';' -f1,9 > $directory"_L2.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( 2000 * 2**10 )) 1000 | cut -d';' -f1,9 > $directory"_L3.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( 2000000 * 2**10 )) 1000 | cut -d';' -f1,9 > $directory"_DRAM.dat"
    cd ..
done

# pc and memcpy directories
cd memcpy
echo "TEST: memcpy"
taskset -c $core_id ./memcpy $(( 24 * 2**10 )) 1000 | cut -d';' -f1,9 > memcpy_L1.dat
taskset -c $core_id ./memcpy $(( 200 * 2**10 )) 1000 | cut -d';' -f1,9 > memcpy_L2.dat
taskset -c $core_id ./memcpy $(( 200 * 2**10 )) 1000 | cut -d';' -f1,9 > memcpy_L3.dat
taskset -c $core_id ./memcpy $(( 2000000 * 2**10 )) 1000 | cut -d';' -f1,9 > memcpy_DRAM.dat
cd ..

cd pc
echo "TEST: pc"
taskset -c $core_id ./pc $(( 24 * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L1.dat
taskset -c $core_id ./pc $(( 200 * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L2.dat
taskset -c $core_id ./pc $(( 2000 * 2**10 )) 1000 | cut -d';' -f1,9 > pc_L3.dat
taskset -c $core_id ./pc $(( 2000000 * 2**10 )) 1000 | cut -d';' -f1,9 > pc_DRAM.dat
cd ..
