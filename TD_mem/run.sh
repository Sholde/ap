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

# 1 array

directories="load ntstore reduc store"
for directory in $directories ; do
    mkdir $cpu_arch/$directory
    echo "TEST: $directory"

    binary=./$directory/$directory"_SSE_AVX"
    result_path=$cpu_arch/$directory
    
    # L1 cache
    taskset -c $core_id $binary $(( $l1_size * 2**10 )) 1000 > $result_path/$directory"_L1.txt"
    cat $result_path/$directory"_L1.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L1.dat"

    # L2 cache
    taskset -c $core_id $binary $(( $l2_size * 2**10 )) 1000 > $result_path/$directory"_L2.txt"
    cat $result_path/$directory"_L2.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L2.dat"

    # L3 cache
    taskset -c $core_id $binary $(( $l3_size * 2**10 )) 1000 > $result_path/$directory"_L3.txt"
    cat $result_path/$directory"_L3.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L3.dat"

    # DRAM
    taskset -c $core_id $binary $(( $ram_size * 2**10 )) 1000 > $result_path/$directory"_DRAM.txt"
    cat $result_path/$directory"_DRAM.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_DRAM.dat"
done

mkdir $cpu_arch/pc
echo "TEST: pc"

binary=./pc/pc

# L1 cache
taskset -c $core_id $binary $(( $l1_size * 2**10 / 2 )) 1000 > $cpu_arch/"pc/pc_L1.txt"
cat $cpu_arch/"pc/pc_L1.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"pc/pc_L1.dat"

# L2 cache
taskset -c $core_id $binary $(( $l2_size * 2**10 / 2 )) 1000 > $cpu_arch/"pc/pc_L2.txt"
cat $cpu_arch/"pc/pc_L2.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"pc/pc_L2.dat"

# L3 cache
taskset -c $core_id $binary $(( $l3_size * 2**10 / 2 )) 1000 > $cpu_arch/"pc/pc_L3.txt"
cat $cpu_arch/"pc/pc_L3.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"pc/pc_L3.dat"

# DRAM
taskset -c $core_id $binary $(( $ram_size * 2**10 / 2 )) 1000 > $cpu_arch/"pc/pc_DRAM.txt"
cat $cpu_arch/"pc/pc_DRAM.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"pc/pc_DRAM.dat"

# 2 arrays

directories="copy dotprod"
for directory in $directories ; do
    mkdir $cpu_arch/$directory
    echo "TEST: $directory"

    binary=./$directory/$directory"_SSE_AVX"
    result_path=$cpu_arch/$directory

    # L1 cache
    taskset -c $core_id $binary $(( $l1_size * 2**10 / 2 )) 1000 > $result_path/$directory"_L1.txt"
    cat $result_path/$directory"_L1.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L1.dat"

    # L2 cache
    taskset -c $core_id $binary $(( $l2_size * 2**10 / 2 )) 1000 > $result_path/$directory"_L2.txt"
    cat $result_path/$directory"_L2.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L2.dat"

    # L3 cache
    taskset -c $core_id $binary $(( $l3_size * 2**10 / 2 )) 1000 > $result_path/$directory"_L3.txt"
    cat $result_path/$directory"_L3.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_L3.dat"

    # DRAM
    taskset -c $core_id $binary $(( $ram_size * 2**10 / 2 )) 1000 > $result_path/$directory"_DRAM.txt"
    cat $result_path/$directory"_DRAM.txt" | cut -d';' -f1,9 | sed "s/;//g" > $result_path/$directory"_DRAM.dat"
done

mkdir $cpu_arch/memcpy
echo "TEST: memcpy"

binary=./memcpy/memcpy

# L1 cache
taskset -c $core_id $binary $(( $l1_size * 2**10 / 2 )) 1000 > $cpu_arch/"memcpy/memcpy_L1.txt"
cat $cpu_arch/"memcpy/memcpy_L1.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"memcpy/memcpy_L1.dat"

# L2 cache
taskset -c $core_id $binary $(( $l2_size * 2**10 / 2 )) 1000 > $cpu_arch/"memcpy/memcpy_L2.txt"
cat $cpu_arch/"memcpy/memcpy_L2.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"memcpy/memcpy_L2.dat"

# L3 cache
taskset -c $core_id $binary $(( $l3_size * 2**10 / 2 )) 1000 > $cpu_arch/"memcpy/memcpy_L3.txt"
cat $cpu_arch/"memcpy/memcpy_L3.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"memcpy/memcpy_L3.dat"

# DRAM
taskset -c $core_id $binary $(( $ram_size * 2**10 / 2 )) 1000 > $cpu_arch/"memcpy/memcpy_DRAM.txt"
cat $cpu_arch/"memcpy/memcpy_DRAM.txt" | cut -d',' -f1,4 | sed -n "2,34p" | sed "s/,//g"  > $cpu_arch/"memcpy/memcpy_DRAM.dat"

