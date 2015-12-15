section .text
    global fta_memset

fta_memset:
    push rdi
    mov rcx, rdx
    mov rax, rsi
    cld
    rep stosb
    pop rdi
    mov rax, rdi
    ret