#!/bin/bash
set echo on
mkdir -p ../bin

cFiles=$(find . -type f -name "*.c")
assembly="testbed"

compFlags="-g -fdeclspec -fPIC"
inclFlags="-Isrc -I../engine/src/"
linkFlags="-L../bin/-lengine -Wl,-rpath,."

defines="-D_DEBUG -DKIMPORT"

echo "buildildination $assembly"
echo clang $cFiles $compFlags -o ../bin/lib$assembly $defines $inclFlags $linkFlags
clang $cFiles $compFlags -o ../bin/lib$assembly $defines $inclFlags $linkFlags
