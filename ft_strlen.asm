section .data
    BASE_RCX    equ -1
    TO_SUB      equ -2

section .text
    global fta_strlen

fta_strlen:
    push rdi
    mov rcx, BASE_RCX
    xor al, al
    cld
    repnz scasb
    mov r10, TO_SUB
    sub r10, rcx
    mov rax, r10
    pop rdi
    ret