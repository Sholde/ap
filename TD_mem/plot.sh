#!/bin/bash

# Check arguments

if [ $# -ne 1 ] ; then
    echo "Usage: $0 cpu_arch"
    exit 1
fi

cpu_arch=$1
max_range=230

if [ ! -d "$cpu_arch" ] ; then
    echo "Your given cpu architecture have not data to plot"
    echo "Please make sure you have run install.sh and run.sh script with the same cpu architecture"
    exit 2
fi

# Plotting

directories="copy dotprod load memcpy ntstore pc reduc store"
for directory in $directories ; do
    dir_path=$cpu_arch/benchmark/$directory
    gnuplot -c plot_bw.gp $dir_path/$directory $max_range > $dir_path/$directory"_bw.png"
done

exit 0
