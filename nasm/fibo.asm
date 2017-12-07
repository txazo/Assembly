; 斐波那契数列
section .data

section .text
    global _main

_main:
    ; fibo(10)
    mov     rax, 10
    call    fibo
    ret

fibo:
    ; n == 1
    cmp     rax, 1
    je      fibo_end
    ; n == 2
    cmp     rax, 2
    je      fibo_end

    ; 保存现场
    push    rbx
    push    rcx
    push    rdx

    ; fibo(n - 1)
    mov     rdx, rax
    sub     rax, 1
    call    fibo
    mov     rbx, rax

    ; fibo(n - 2)
    mov     rax, rdx
    sub     rax, 2
    call    fibo
    mov     rcx, rax

    ; fibo(n - 1) + fibo(n - 2)
    mov     rax, rbx
    add     rax, rcx

    ; 恢复现场
    pop     rdx
    pop     rcx
    pop     rbx

    ret

fibo_end:
    ; f(1) = f(2) = 1
    mov     rax, 1
    ret
