section .text
    global fta_isalpha

fta_isalpha:
    cmp rdi, 'a'
    jge fta_islower
    
    cmp rdi, 'A'
    jge fta_isupper
    jl fta_ret_fail
    
fta_islower:
    cmp rdi, 'z'
    jle fta_ret_success
    cmp rdi, 'A'
    jge fta_isupper
    jl fta_ret_fail

fta_isupper:
    cmp rdi, 'Z'
    jle fta_ret_success
    jg fta_ret_fail

fta_ret_success:
    mov rax, 1
    ret
    
fta_ret_fail:
    mov rax, 0
    ret