#!/bin/bash

# Check arguments

if [ $# -ne 6 ] ; then
    echo "Usage: $0 cpu_arch core_id l1_size l2_size l3_size ram_size"
    exit 1
fi

cpu_arch=$1
core_id=$2
l1_size=$3
l2_size=$4
l3_size=$5
ram_size=$6

rm -Rf $cpu_arch
mkdir $cpu_arch

# 1 array

directories="load ntstore reduc store"
for directory in $directories ; do
    mkdir $cpu_arch/$directory
    cd $directory
    echo "TEST: $directory"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L1.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L2.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l3_size* 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L3.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_DRAM.dat"
    cd ..
done

mkdir $cpu_arch/pc
cd pc
echo "TEST: pc"
taskset -c $core_id ./pc $(( $l1_size * 2**10 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/pc/pc_L1.dat"
taskset -c $core_id ./pc $(( $l2_size * 2**10 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/pc/pc_L2.dat"
taskset -c $core_id ./pc $(( $l3_size * 2**10 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/pc/pc_L3.dat"
taskset -c $core_id ./pc $(( $ram_size * 2**10 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/pc/pc_DRAM.dat"
cd ..

# 2 arrays

directories="copy dotprod"
for directory in $directories ; do
    mkdir $cpu_arch/$directory
    cd $directory
    echo "TEST: $directory"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L1.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L2.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $l3_size* 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_L3.dat"
    taskset -c $core_id ./$directory"_SSE_AVX" $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/"$directory"/"$directory"_DRAM.dat"
    cd ..
done

mkdir $cpu_arch/memcpy
cd memcpy
echo "TEST: memcpy"
taskset -c $core_id ./memcpy $(( $l1_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/memcpy/memcpy_L1.dat"
taskset -c $core_id ./memcpy $(( $l2_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/memcpy/memcpy_L2.dat"
taskset -c $core_id ./memcpy $(( $l3_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/memcpy/memcpy_L3.dat"
taskset -c $core_id ./memcpy $(( $ram_size * 2**10 / 2 )) 1000 | cut -d';' -f1,9 > "../"$cpu_arch"/memcpy/memcpy_DRAM.dat"
cd ..

