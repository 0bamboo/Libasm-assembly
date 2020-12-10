# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/18 09:53:39 by abdait-m          #+#    #+#              #
#    Updated: 2020/12/10 14:00:55 by abdait-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

FILES = $(wildcard ./srcs/*.s)

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