global _main

_main:
    mov eax, [n1]
    mov ebx, [n2]
    add eax, ebx

    ret

section .data
    ; dw 双字
    n1  dw  10
    n2  dw  20
