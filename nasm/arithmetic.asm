; 四则运算: (1 + 4 - 2) * 6 / 9 = 2
section .data
    a       dd  1
    b       dd  4
    c       dd  2
    d       dd  6
    e       dd  9

section .text
    global _main

_main:
    mov     eax, [rel a]
    add     eax, [rel b]
    sub     eax, [rel c]
    imul    eax, [rel d]
    cdq
    idiv    dword [rel e]
    ret
