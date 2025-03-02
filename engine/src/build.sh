#!/bin/bash
set echo on
mkdir -p ../bin

cFiles=$(find . -type f -name "*.c")
assembly="engine"

compFlags="-g -shared -fdeclspec -fPIC"
inclFlags="-Isrc -I$VULKAN_SDK/include"
linkFlags="-lvulkan -lxcd -lX11 -lX11-xcb -lxkbcommon -L$VULKAN_SDK/lib -L/usr/X11R6/lib"

defines="-D_DEBUG -DKEXPORT"

echo "buildildination $assembly"
clang $cFiles $compFlags -o ../bin/lib$assembly.so $defines $inclFlags $linkFlags
