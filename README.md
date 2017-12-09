#### gcc

```
// 预处理
gcc -E test.c -o test.i
// 编译
gcc -S test.i -o test.s
// 汇编
gcc -c test.s -o test.o
// 链接
gcc stdout.o -o test
```

#### nasm

```
// 汇编
nasm -f macho64 test.asm -o test.o
// 链接
gcc -m64 test.o -o test
```

#### 寄存器

```
rax     eax     ax      // 返回值
rbx     ebx     bx      // 被调用者保存
rbp     ebp     bp      // 被调用者保存
esp     esp     sp      // 栈指针
rdi     edi     di      // 第1个参数
rsi     esi     si      // 第2个参数
rdx     edx     dx      // 第3个参数
rcx     ecx     cx      // 第4个参数
r8      r8d     r8w     // 第5个参数
r9      r9d     r9w     // 第6个参数
```

#### 栈

* FILO
* 内存数组
* 栈顶地址向下增长

```
pushq   S       // 入栈
    rsp = rsp - 8
    [rsp] = S

popq    D       // 出栈
    D = [rsp]
    rsp = rsp +8
```

#### 方法

```
1. 调用方法准备
    push R                  // 保存调用者保存寄存器
2. 参数准备
    寄存器: 少于6个参数
    寄存器 + 栈: 多于6个参数
3. call
    push [returnAddress]    // 返回地址入栈, 被调用方法后下一条指令的地址
    rip = 被调用方法的起始指令地址
4. 被调用方法
    push R                  // 保存被调用者保存寄存器
    rsp = rsp - n           // 分配栈帧
    ...                     // 方法执行
    rsp = rsp + n           // 回收栈帧
    pop R                   // 恢复被调用者保存寄存器
5. ret
    rax                     // 返回值
    pop rip                 // 返回地址出栈
6. 调用方法返回
    pop R                   // 恢复调用者保存寄存器
```
