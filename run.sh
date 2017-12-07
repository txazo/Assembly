#!/bin/sh

name=$1
path="./nasm/"${name}
tempCPath="./temp/c/"${name}
tempAsmPath="./temp/asm/"${name}
color="\033[;36m"

function execC() {
    if ! [ -f "${path}.c"  ]; then
        return
    fi

    echo "${color}[C] gcc ${path}.c to ${tempCPath}.s"
    gcc -m64 -O0 -S ${path}.c -o ${tempCPath}.s
    echo "${color}[C] gcc ${tempCPath}.s to ${tempCPath}"
    gcc -m64 ${tempCPath}.s -o ${tempCPath}.o
    echo "[C] exec ${tempCPath}"
    ${tempCPath}
    echo "[C] ret "$?
}

function execAsm() {
    if ! [ -f "${path}.asm"  ]; then
        return
    fi

    echo "${color}[ASM] nasm "${path}".asm to "${tempAsmPath}.o
    nasm -f macho64 ${path}.asm -o ${tempAsmPath}.o
    echo "[ASM] gcc "${tempAsmPath}".o to "${tempAsmPath}
    gcc -m64 ${tempAsmPath}.o -o ${tempAsmPath}
    echo "[ASM] exec "${tempAsmPath}
    ${tempAsmPath}
    echo "[ASM] ret "$?
}

execC
execAsm
