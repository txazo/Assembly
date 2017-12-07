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
