; 斐波那契数列
global _main

_main:
    ; fibo(10)
    mov     eax, 10
    call    fibo
    ret

fibo:
    ; 参数n

    ; n == 1
    cmp     eax, 1
    je      fibo_end
    ; n == 2
    cmp     eax, 2
    je      fibo_end

    ; 保存现场
    push    ebx
    push    ecx
    push    edx

    ; fibo(n - 1)
    mov     edx, eax
    sub     eax, 1
    call    fibo
    mov     ebx, eax

    ; fibo(n - 2)
    mov     eax, edx
    sub     eax, 2
    call    fibo
    mov     ecx, eax

    ; fibo(n - 1) + fibo(n - 2)
    mov     eax, ebx
    add     eax, ecx

    ; 恢复现场
    pop edx
    pop ecx
    pop ebx

    ret

fibo_end:
    mov eax, 1
    ret
