; 条件表达式
section .data

section .text
    global _main

_main:
    mov     rdi, 3
    mov     rsi, 2
    call    max
    ret

max:
    ; rcx = x + 1
    lea     rcx, [rdi + 1]
    ; rax = y - 1
    lea     rax, [rsi - 1]
    cmp     rdi, rsi
    cmovge  rax, rcx
    ret
