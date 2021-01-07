#!/bin/bash

# Check arguments

if [ $# -ne 1 ] ; then
    echo "Usage: $0 cpu_arch"
    exit 1
fi

cpu_arch=$1

# Clean
rm -rf $cpu_arch

# Creating ditectories
mkdir $cpu_arch \
      $cpu_arch/compiler $cpu_arch/lib \
      $cpu_arch/system $cpu_arch/system/cpu $cpu_arch/system/caches $cpu_arch/system/memory \
      $cpu_arch/system/numa $cpu_arch/system/topology 

# Populating the compiler directory
gcc --version > $cpu_arch/compiler/gcc_version.txt

# Populating the lib directory
ldd --version > $cpu_arch/lib/glibc_version.txt

# system
# Gathering all hardware information
sudo dmidecode > $cpu_arch/system/hw.txt

# Populating the cpu directory
cat /proc/cpuinfo > $cpu_arch/system/cpu/info.txt

# Populating the caches directory
cat /sys/devices/system/cpu/cpu*/cache/index*/* > $cpu_arch/system/caches/all.txt

# Populating the memory directory
cat /proc/meminfo > $cpu_arch/system/memory/info.txt

# Populating the numa directory
numactl -H > $cpu_arch/system/numa/info.txt

# Populating the topology directory
lstopo --of png $cpu_arch/system/topology/lstopo.png
