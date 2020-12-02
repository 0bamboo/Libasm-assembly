        section     .text
        global      _addpwnum

_addpwnum:
        mov rax, 0
        mov rbx, 1
        mov rcx, rdi


start_lp:
        cmp rcx, 0
        je exit
        mul rbx
        add rax, rbx
        inc rbx
        dec rcx
        jmp start_lp
        
exit:
        ret