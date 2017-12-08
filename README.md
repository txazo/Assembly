#### gcc

```
// 预处理
gcc -E stdout.c -o stdout.i
// 编译
gcc -S stdout.i -o stdout.s
// 汇编
gcc -c stdout.s -o stdout.o
// 链接
gcc stdout.o -o stdout
```

#### 参数

```
rdi     edi     di     // 第1个参数
rsi     esi     si     // 第2个参数
rdx     edx     dx     // 第3个参数
rcx     ecx     cx     // 第4个参数
r8      r8d     r8w     // 第5个参数
r9      r9d     r9w     // 第6个参数
```
