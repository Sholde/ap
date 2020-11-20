#!/bin/bash

# Product assembler

# Base
objdump -D base_gcc > base_gcc.asm
objdump -D base_clang > base_clang.asm

# Light
objdump -D light_gcc > light_gcc.asm
objdump -D light_clang > light_clang.asm

# Opti
objdump -D opti_gcc > opti_gcc.asm
objdump -D opti_clang > opti_clang.asm

# High
objdump -D high_gcc > high_gcc.asm
objdump -D high_clang > high_clang.asm

# Kamikaze
objdump -D kamikaze_gcc > kamikaze_gcc.asm
objdump -D kamikaze_clang > kamikaze_clang.asm

# Move assembler file

if [ ! -d "asm" ]; then
    mkdir asm
fi
mv *.asm asm
