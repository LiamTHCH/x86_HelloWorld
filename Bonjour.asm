global _start                                   ; Mettre _start en programme de demarage

section .text                                   ; Jsute un section avec un nom

_start:                                         ; fonction start 
    MOV rax, 0x01                               ; Mettre les registre a bonne endroit pour faire un write(0x01)
    MOV rdi, 0x01                               
    MOV rsi, msg                                ; registre avec le message
    MOV rdx, msglenght                          ; registre avec la longeur du message
    SYSCALL                                     ; dire au pc que tout est pres

    MOV rax, 0x3C                               ; mettre le registre pour un exit
    MOV rdi, 0x0                                ; registre pour le code d'erreur (ici 0)
    SYSCALL                                     ; dire au pc que tout est pres

section .data                                   ; section avec les donnes 
    msg: DB "Salut tout le monde", 0xA          ; Message + 0xA pour un retour de ligne
    msglenght: EQU $ - msg                      ; calcule pour la longeur du message