section .data
    SYS_WRITE   equ 1
    STD_OUT     equ 1
    NEW_LINE    db 0xa

section .text
    global fta_puts

fta_puts:
    mov r10, rdi
    mov r8, 0
    call fta_strlen
    mov r10, rdi
    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, r10
    mov rdx, r8
    syscall
    call fta_puts_new_line
    mov rax, r8
    mov rdi, r10
    ret

fta_puts_new_line:
    mov rax, SYS_WRITE
    mov rdi, STD_OUT
    mov rsi, NEW_LINE
    mov rdx, 1
    syscall
    inc r8
    ret
    
fta_strlen:
    cmp [r10],byte 0
    je fta_ret
    inc r10
    inc r8
    jmp fta_strlen

fta_ret:
    ret