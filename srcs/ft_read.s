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
