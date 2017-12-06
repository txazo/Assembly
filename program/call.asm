global _main

_main:
    mov eax, 1
    mov ebx, 2
    call add
    ret

add:
    add eax, ebx
    ret
