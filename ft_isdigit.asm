section .text
    global fta_isdigit

fta_isdigit:
    cmp rdi, '0'
    jl fta_ret_fail
    cmp rdi, '9'
    jg fta_ret_fail
    jmp fta_ret_success

fta_ret_success:
    mov rax, 1
    ret
    
fta_ret_fail:
    mov rax, 0
    ret