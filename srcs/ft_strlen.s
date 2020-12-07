; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strlen.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2019/10/21 11:54:48 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/07 16:37:57 by abdait-m         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

            section .text
            global _ft_strlen

_ft_strlen:
            xor rax, rax
s_loop:
            cmp byte[rdi], 0
            je exit
            inc rax
            inc rdi
            jmp s_loop
exit:
            ret