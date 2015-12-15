section .bss
    buffer: resb 10

section .data
    COUNT   equ 10
    READ    equ 0
    WRITE   equ 1
    STD_OUT equ 1
    
section .text
    global fta_cat

fta_cat:
    call fta_catloop
    ret

fta_catloop:
    mov rsi, buffer
    mov rdx, COUNT
    mov rax, READ
    syscall
    
    push rdi
    push rax
    mov rdi, STD_OUT
    mov rsi, buffer
    mov rdx, rax
    mov rax, WRITE
    syscall

    pop rax
    pop rdi
    cmp rax, COUNT
    je fta_catloop
    jne fta_ret

fta_ret:
    ret