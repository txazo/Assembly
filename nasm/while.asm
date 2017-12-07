; while循环: 1+2+3+4+5+6+7+8+9+10
section .data

section .text
    global _main

_main:
    mov     eax, 0
    mov     ebx, 1

_while:
    cmp     ebx, 10
    jg     _end
    add     eax, ebx
    add     ebx, 1
    jmp     _while

_end:
    ret
