#!/bin/sh

tempPath="./temp"
program=$1

nasm -f macho32 ./program/${program}.asm -o ${tempPath}/${program}.o
gcc -m32 ${tempPath}/${program}.o -o ${tempPath}/${program}
${tempPath}/${program}
echo $?
