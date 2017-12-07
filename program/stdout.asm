section .data
    msg     db  "stdout",'\n'

section .text
    global _main

_main:
    mov     eax, 1
    mov     edi, 1
    mov     esi, msg
    mov     edx, 6
    syscall
    mov     eax, 60
    mov     edi, 0
    syscall
