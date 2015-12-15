section .text
    global fta_isascii

fta_isascii:
    cmp rdi, 128
    jl fta_return_success
    mov rax, 0
    ret

fta_return_success: 
    mov rax, 1
    ret