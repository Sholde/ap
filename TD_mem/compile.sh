#!/bin/bash

# Compile all benchmark
directories="copy dotprod load memcpy ntstore pc reduc store"
for directory in $directories ; do
    make -C $directory
done
