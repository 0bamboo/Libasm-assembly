        global start

        section .text
start:  
        mov rax, output
        mov r8, 1
        mov r9, 0

line:
        mov byte [rax], '*'
        inc rax
        inc r9
        cmp r9,r8
        jne line

linedone:
        mov byte[rax], 10
        inc rax
        inc r8
        mov r9, 0
        cmp r8, maxlines
        jng line

done:
        mov rax, 0x02000004
        mov rdi, 1
        mov rsi, output
        mov rdx, dataSize
        syscall
        mov rax, 0x02000001
        xor rdi, rdi
        syscall

        section .bss
maxlines equ    8
dataSize equ    44
output:  resb   dataSize