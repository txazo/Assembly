; if条件语句
section .data

section .text
    global _main

_main:
    mov eax, 75
    cmp eax, 90
    jl condition_2
    mov ebx, 1
    jmp condition_end

condition_2:
    cmp eax, 80
    jl condition_3
    mov ebx, 2
    jmp condition_end

condition_3:
    cmp eax, 70
    jl condition_4
    mov ebx, 3
    jmp condition_end

condition_4:
    mov ebx, 4

condition_end:
    mov eax, ebx
    ret
