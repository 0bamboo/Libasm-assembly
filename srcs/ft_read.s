; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_read.s                                             :+:    :+:    :+:  ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/10 13:53:58 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;
	
			section .text
			global _ft_read
			extern ___error

_ft_read:
			mov rax, 0x2000003
			syscall
			jc handle_err
			ret

handle_err:    
			mov rbx, rax
			push  rsp
			call ___error
			pop  rsp
			mov [rax], rbx
			mov rax, -1
			ret
