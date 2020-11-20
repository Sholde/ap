#!/bin/bash

# Product assembler

# Base
objdump -S base_gcc > base_gcc.asm
objdump -S base_clang > base_clang.asm

# Light
objdump -S light_gcc > light_gcc.asm
objdump -S light_clang > light_clang.asm

# Opti
objdump -S opti_gcc > opti_gcc.asm
objdump -S opti_clang > opti_clang.asm

# High
objdump -S high_gcc > high_gcc.asm
objdump -S high_clang > high_clang.asm

# Kamikaze
objdump -S kamikaze_gcc > kamikaze_gcc.asm
objdump -S kamikaze_clang > kamikaze_clang.asm

# Move assembler file

if [ ! -d "asm" ]; then
    mkdir asm
fi
mv *.asm asm
