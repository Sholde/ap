#!/bin/bash

# Check arguments

if [ $# -ne 3 ] ; then
    echo "Usage: $0 delta cpu_arch cpu_name"
    exit 1
fi

delta=$1
cpu_arch=$2
cpu_name=$3

if [ ! -d "$cpu_arch" ] ; then
    echo "Your given cpu architecture have not data to plot"
    echo "Please make sure you have run install.sh and run.sh script with the same cpu architecture"
    exit 2
fi

# Plotting

directories="copy dotprod load memcpy ntstore pc reduc store"
for directory in $directories ; do
    dir_path=$cpu_arch/benchmark/$directory
    gnuplot -c plot_bw.gp $delta $dir_path/$directory ${directory^} "$cpu_name" > $dir_path/$directory"_bw.png"
done

exit 0
