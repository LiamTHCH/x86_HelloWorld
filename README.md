# x86_HelloWorld
Un simple programme "Hello World" en x86 assembly

Documentation pour les registres [Linux System Call Table](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md "Documentation").
### Compiler et executer le programme
Tout d'abord il faut compiler le programme:
```
nasm -f elf64 -o Bonjour.o Bonjour.asm 
```
Puis on utilise le "Dynamic linker" pour rendre le programme executable:
```
 ls -o Bonjour Bonjour.o
```
Puis on peut executer le programme:
```
./Bonjour
```
