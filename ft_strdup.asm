extern fta_strlen
extern malloc

section .text
    global fta_strdup

fta_strdup:
    call fta_strlen
    call fta_mult
    push rdi
    mov rdi, rax
    call malloc
    mov rdi, rax
    pop rsi
    cld
    mov rcx, 13
    rep movsb
    ret

fta_mult:
    mov rdx, 8
    mul rax
    ret