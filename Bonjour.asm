global _start

section .text

_start:
    MOV rax, 0x01
    MOV rdi, 0x01
    MOV rsi, msg
    MOV rdx, msglenght
    SYSCALL

    MOV rax, 0x3C
    MOV rdi, 0x0
    SYSCALL

section .data
    msg: DB "Salut tout le monde", 0xA
    msglenght: EQU $ - msg    