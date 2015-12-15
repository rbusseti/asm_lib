section .text
    global fta_isprint

fta_isprint:
    cmp rdi, 31
    jg fta_check_sup
    mov rax, 0
    ret
    
fta_check_sup:
    cmp rdi, 127
    jl fta_return_success
    mov rax, 0
    ret

fta_return_success:
    mov rax, 1
    ret