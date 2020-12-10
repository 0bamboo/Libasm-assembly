; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strlen.s                                         :+:      :+:    :+:  ;
;                                                    +:+ +:+         +:+     ;
;   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             ;
;   Updated: 2020/12/10 13:53:58 by abdait-m         ###   ########.fr       ;
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