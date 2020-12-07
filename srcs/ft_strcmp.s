; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcmp.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2019/10/21 11:54:48 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/07 16:37:57 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

            section .text
            global  _ft_strcmp:

_ft_strcmp:
            xor rax, rax
            xor rbx, rbx
            
start_loop:
            mov al, byte[rdi]
            mov bl, byte[rsi]
            cmp al, bl
            jnz func_ret
            cmp al, 0
            jz func_ret
            cmp bl, 0
            jz func_ret
            inc rdi
            inc rsi
            jmp start_loop

func_ret:
            sub rax, rbx
            js ret_neg
            cmp rax, 0
            jg ret_pos
            ret

ret_neg:
            mov rax, -1
            ret

ret_pos:
            mov rax, 1
            ret