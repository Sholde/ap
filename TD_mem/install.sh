#!/bin/bash

# Clean
rm -rf compiler lib system system/cpu system/caches system/memory system/numa system/topology

# Creating ditectories
mkdir compiler lib system system/cpu system/caches system/memory system/numa system/topology

# Populating the compiler directory
gcc --version > compiler/gcc_version.txt

# Populating the lib directory
ldd --version > lib/glibc_version.txt

# system
# Gathering all hardware information
sudo dmidecode > system/hw.txt

# Populating the cpu directory
cat /proc/cpuinfo > system/cpu/info.txt

# Populating the caches directory
cat /sys/devices/system/cpu/cpu*/cache/index*/* > system/caches/all.txt

# Populating the memory directory
cat /proc/meminfo > system/memory/info.txt

# Populating the numa directory
numactl -H > system/numa/info.txt

# Populating the topology directory
lstopo --of png system/topology/lstopo.png
