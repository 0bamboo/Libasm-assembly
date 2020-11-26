
global 		_main
section 	.text   ; this section is for the code
_main:
		mov rax, 0x02000004  ; system call for function write
		mov rdi, 1			;first arg of the funct write fd
		mov rsi, text		; second arg of wirte
		mov rdx, 14			; third arg of write
		syscall				;invoke operating system to do write 

		mov rax, 0x02000001	; system call for function exit
		mov rdi, 0			; first arg of the func exit
		syscall				;invoke os to exit

section 	.data   ; this section is for the constant data
text 		db "hello , world" ,10