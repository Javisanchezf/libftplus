# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 17:27:09 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
LIBFT = 42Malaga-libft
NEXTLINE = 42Malaga-get_next_line
PRINTF = 42Malaga-ft_printf

OBJS := $(SRC:.c=.o)

all: libftmake nextlinemake printfmake
clean: libftclean nextlineclean printfclean
fclean: libftfclean nextlinefclean printffclean
re: libftre nextlinere printfre

.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

libftmake:
	make -C $(LIBFT)
libftclean:
	make clean -C $(LIBFT)
libftfclean:
	make fclean -C $(LIBFT)
libftre: libftclean libftmake

nextlinemake:
	make bonus -C $(NEXTLINE)
nextlineclean:
	make bonus clean -C $(NEXTLINE)
nextlinefclean:
	make bonus fclean -C $(NEXTLINE)
nextlinere: nextlinefclean nextlinemake

printfmake:
	make -C $(PRINTF)
printfclean:
	make clean -C $(PRINTF)
printffclean:
	make fclean -C $(PRINTF)
printfre: printffclean printfmake

.PHONY : all clean fclean re libftclean libftfclean libftmake

#Personal use
git: fclean gitignore
	git add *
	git commit -m "AUTOMATIC COMMIT"
	git push
	git ls-files
gitignore:
	echo ".*\n*.out\n*.o\n*.a">.gitignore