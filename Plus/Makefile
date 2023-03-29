# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 17:56:33 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 18:04:32 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = plus.a
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
	ar rcs $(NAME) $(OBJS)
.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
clean:
	$(CLEAN) ./$(OBJS)
fclean: clean
	$(CLEAN) ./$(NAME)
re: fclean all

.PHONY : all clean fclean re