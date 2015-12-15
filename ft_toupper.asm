extern fta_isalpha
    
section .text
    global fta_toupper

fta_toupper:
    call fta_isalpha
    cmp rax, 1
    je fta_islower
    mov rax, rdi
    ret

fta_islower:    
    cmp rdi, 'a'
    jge fta_upper
    mov rax, rdi
    ret

fta_upper:
    mov rax, rdi
    sub rax, 32
    ret