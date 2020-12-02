# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/18 09:53:39 by abdait-m          #+#    #+#              #
#    Updated: 2020/12/02 17:57:03 by abdait-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

FILES = $(wildcard ./srcs/ft_write.s ./srcs/ft_read.s ./srcs/ft_strlen.s)

HEADER = ./assembly.h

MAIN = ./main.c

EXC = ASM

OBJ = $(FILES:.s=.o)

all: $(NAME)

$(NAME): $(OBJ) $(HEADER)
	@ar -rcs $(NAME) $(OBJ)
	@echo "$(NAME) IS CREATED !"


%.o:%.s	$(HEADER)
	@nasm -f macho64 $<

clean:
	@rm -rf srcs/*.o
	@echo "\n CLEANING DONE !"

fclean: clean
	@rm -rf $(NAME) 

re : fclean all