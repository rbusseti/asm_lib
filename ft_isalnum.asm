extern fta_isalpha
extern fta_isdigit
    
section .text
    global fta_isalnum

fta_isalnum:
    call fta_isalpha
    cmp rax, 1
    je fta_return
    call fta_isdigit
    ret

fta_return:
    ret