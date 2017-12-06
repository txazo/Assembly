; while循环
global _main

_main:
    mov eax, 0
    mov ebx, 1

_start:
    cmp ebx, 10
    jge _end

    add eax, ebx
    add ebx, 1
    jmp _start

_end:
    ret
