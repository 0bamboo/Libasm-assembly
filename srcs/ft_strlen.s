; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    Makefile                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: abdait-m <abdait-m@student.1337.ma>        +;+  +:+       +;+         ;
;                                                 +;+;+;+;+;+   +;+            ;
;    Created: 2020/11/18 09:53:39 by abdait-m          ;+;    ;+;              ;
;    Updated: 2020/12/03 09:53:40 by abdait-m         ;;;   ;;;;;;;;.fr        ;
;                                                                              ;
; **************************************************************************** ;

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