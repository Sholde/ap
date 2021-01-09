#!/bin/bash

# Check arguments

if [ $# -ne 1 ] ; then
    echo "Usage: $0 cpu_arch"
    exit 1
fi

cpu_arch=$1

# Print standart derivation

benchmark="copy dotprod load ntstore reduc store"
bench_dir=$cpu_arch/benchmark

for bench in $benchmark ; do
    echo
    echo $bench
    echo "L1"
    cat $bench_dir/$bench/$bench"_L1.txt" | cut -d";" -f1,8
    echo "L2"
    cat $bench_dir/$bench/$bench"_L2.txt" | cut -d";" -f1,8
    echo "L3"
    cat $bench_dir/$bench/$bench"_L3.txt" | cut -d";" -f1,8
    echo "DRAM"
    cat $bench_dir/$bench/$bench"_DRAM.txt" | cut -d";" -f1,8
done	     

benchmark="pc memcpy"
bench_dir=$cpu_arch/benchmark

for bench in $benchmark ; do
    echo
    echo $bench
    echo "L1"
    cat $bench_dir/$bench/$bench"_L1.txt" | sed -n "36p" | cut -d"," -f5
    cat $bench_dir/$bench/$bench"_L1.txt" | sed -n "78p" | cut -d"," -f5
    echo "L2"
    cat $bench_dir/$bench/$bench"_L2.txt" | sed -n "36p" | cut -d"," -f5
    cat $bench_dir/$bench/$bench"_L2.txt" | sed -n "78p" | cut -d"," -f5
    echo "L3"
    cat $bench_dir/$bench/$bench"_L3.txt" | sed -n "36p" | cut -d"," -f5
    cat $bench_dir/$bench/$bench"_L3.txt" | sed -n "78p" | cut -d"," -f5
    echo "DRAM"
    cat $bench_dir/$bench/$bench"_DRAM.txt" | sed -n "36p" | cut -d"," -f5
    cat $bench_dir/$bench/$bench"_DRAM.txt" | sed -n "78p" | cut -d"," -f5
done	     

