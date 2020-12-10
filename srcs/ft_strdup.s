; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strdup.s                                         :+:      :+:    :+:  ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/10 13:53:58 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

            section .text
            global  _ft_strdup
            extern  _malloc
            extern  _ft_strlen
            extern  _ft_strcpy

_ft_strdup:
            xor rax, rax
            mov r14, rdi
            call _ft_strlen
            mov rdi, rax
            inc rdi
            push rsp
            call _malloc
            pop rsp
            cmp rax, 0
            je func_ret
            mov rdi, rax
            mov rsi, r14
            call _ft_strcpy
            jmp func_ret

func_ret:            
            ret