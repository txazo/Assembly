global _main

_main:
    mov eax, 75
    ; 比较指令
    cmp eax, 90
    ; 小于跳转指令
    jl skip_level_1
    mov ebx, 1
    ; 跳转指令
    jmp to_return

skip_level_1:
    cmp eax, 80
    jl skip_level_2
    mov ebx, 2
    jmp to_return

skip_level_2:
    cmp eax, 60
    jl skip_level_3
    mov ebx, 3
    jmp to_return

skip_level_3:
    mov ebx, 4

to_return:
    mov eax, ebx
    ret
