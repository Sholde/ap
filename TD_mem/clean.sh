#!/bin/bash

# Clean temporary files
rm -Rf *~ **/*~

# Clean cpu architecture directory
if [ $# -eq 1 ] ; then
    rm -Rf $1
fi

# Clean benchmark directories
directories="copy dotprod load memcpy ntstore pc reduc store"
for directory in $directories ; do
    make -C $directory/ clean
done

