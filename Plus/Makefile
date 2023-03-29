# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 17:56:33 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 19:09:34 by javiersa         ###   ########.fr        #
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
	ft_free_and_null.c

OBJS := $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "$(GREEN)$(PERSONALNAME) -> Objects and library created successfully.$(DEFAULT)"
.c.o:
	@$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
clean:
	@$(CLEAN) ./$(OBJS)
	@echo "$(RED)$(PERSONALNAME) -> Objects files deleted.$(DEFAULT)"
fclean:
	@$(CLEAN) ./$(OBJS)
	@$(CLEAN) ./$(NAME)
	@echo "$(RED)$(PERSONALNAME) -> Library and objects files deleted.$(DEFAULT)"
re: fclean all

.PHONY : all clean fclean re

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m