# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 17:56:33 by javiersa          #+#    #+#              #
#    Updated: 2023/05/18 17:36:50 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = plus.a
PERSONALNAME = Plus
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
LIBFT = ../42Malaga-libft
SRC = ft_atoilong.c \
	ft_swapint.c  \
	ft_freeandjoin.c \
	ft_free_and_null.c \
	ft_isspace.c \
	ft_count_words.c \
	ft_hex_to_dec.c \
	ft_abs.c \
	ft_multiple_free.c \
	ft_error.c \
	ft_split_free.c \
	ft_printf_split.c

OBJS := $(SRC:.c=.o)

.c.o:
	@$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
	@echo "$(GREEN)Compiling:$(DEFAULT) $(notdir $<)"
all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "$(MAGENTA)Library $(NAME) created successfully.$(DEFAULT)"
clean:
	@$(CLEAN) ./$(OBJS)
	@echo "$(RED)Removing:$(DEFAULT) All objects from $(PERSONALNAME)."
fclean: clean
	@$(CLEAN) ./$(NAME)
	@echo "$(RED)Removing:$(DEFAULT) Library $(NAME)."
re: fclean all

#COLORS
BOLD	:= \033[1m
BLACK	:= \033[30;1m
RED		:= \033[31;1m
GREEN	:= \033[32;1m
YELLOW	:= \033[33;1m
BLUE	:= \033[34;1m
MAGENTA	:= \033[35;1m
CYAN	:= \033[36;1m
WHITE	:= \033[37;1m
DEFAULT	:= \033[0m