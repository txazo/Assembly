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
