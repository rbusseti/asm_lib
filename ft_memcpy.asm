section .text
    global fta_memcpy

fta_memcpy:
    push rdi
    mov rcx, rdx
    mov rax, rsi
    cld
    rep movsb
    pop rdi
    mov rax, rdi
    ret