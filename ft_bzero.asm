section .text
    global fta_bzero
    
fta_bzero:
    mov r10, rdi
    mov r12, rsi
    mov r9, 0
    call bZero

bZero:
    cmp r9, r12
    je exit_bzero
    mov byte [r10], 0
    inc r9
    inc r10
    jmp bZero

exit_bzero: 
    ret