extern fta_isalpha
    
section .text
    global fta_tolower

fta_tolower:
    call fta_isalpha
    cmp rax, 1
    je fta_isupper
    mov rax, rdi
    ret

fta_isupper:    
    cmp rdi, 'Z'
    jle fta_lower
    mov rax, rdi
    ret

fta_lower:
    mov rax, rdi
    add rax, 32
    ret