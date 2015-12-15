section .text
    global fta_strcat

fta_strcat:
    xor rdx, rdx
    call fta_browse_str
    call fta_copy
    mov byte [rdi], 0
    sub rdi, rdx
    ret

fta_browse_str:
    cmp byte [rdi], 0
    je return
    inc rdi
    inc rdx
    jmp fta_browse_str

fta_copy:
    cmp byte [rsi], 0
    je return
    mov r10, [rsi]
    mov [rdi], r10
    inc rsi
    inc rdi
    inc rdx
    jmp fta_copy

return:
    ret