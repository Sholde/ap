#!/bin/bash

# Clean
rm -rf compiler lib system system/cpu system/caches system/memory

# Creating ditectories
mkdir compiler lib system system/cpu system/caches system/memory

# Populating the compiler directory
gcc --version > compiler/gcc_version

# Populating the lib directory
ldd --version > lib/glibc_version

# system
# Gathering all hardware information
sudo dmidecode > system/hw.txt

# Populating the cpu directory
cat /proc/cpuinfo > system/cpu/info.txt

# Populating the caches directory
cat /sys/devices/system/cpu/cpu*/cache/index*/* > system/caches/all.txt

# Populating the memory directory
sudo cat /proc/meminfo > system/memory/info.txt
