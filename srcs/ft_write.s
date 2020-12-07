; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_write.s                                        :+:      :+:    :+:    ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2019/10/21 11:54:48 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/07 16:37:57 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

			section .text
			global _ft_write:
			extern ___error

_ft_write:  
			mov rax, 0x2000004
			syscall
			jc handle_err
			ret

handle_err:
			mov rbx, rax
			push rsp
			call ___error
			pop rsp
			mov [rax], rbx
			mov rax, -1
			ret