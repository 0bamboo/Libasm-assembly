; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcpy.s                                             :+:  :+:  :+:    ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/10 13:53:58 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

            section .text
            global  _ft_strcpy

_ft_strcpy:
            xor rcx, rcx

start_loop:
            cmp byte[rsi + rcx], 0
            jz func_ret
            mov dl, [rsi + rcx]
            mov [rdi + rcx], dl
            inc rcx
            jmp start_loop

func_ret:
            mov byte[rdi + rcx], 0
            mov rax, rdi
            ret
