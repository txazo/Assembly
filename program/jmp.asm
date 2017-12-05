global _main

_main:
    mov eax, 1
    mov ebx, 2
    ; 跳转指令
    jmp f1
    add eax, ebx

f1:
    ret
