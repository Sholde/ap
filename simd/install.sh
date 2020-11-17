#!/bin/bash

make
./asm.sh
./move.sh
rm -Rf *~
