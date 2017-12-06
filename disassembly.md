#### 反汇编

```
$ nasm -f macho32 test.asm -o test.o
$ gcc -m32 test.o -o test
$ sudo gdb ./test

(gdb) set disassembly-flavor intel
(gdb) disas main
(gdb) break *0x00001fb0
(gdb) run
(gdb) info register eax
(gdb) stepi
(gdb) info register ebx
(gdb) disas
(gdb) p/x *(unsigned int*)$esp
(gdb) continue
```
