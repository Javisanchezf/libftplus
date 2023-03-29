# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 18:11:43 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
LIBFT = 42Malaga-libft
NEXTLINE = 42Malaga-get_next_line
PRINTF = 42Malaga-ft_printf
PLUS = Plus

all: submodules libftmake nextlinemake printfmake plusmake
clean: libftclean nextlineclean printfclean plusclean
fclean: libftfclean nextlinefclean printffclean plusfclean
re: libftre nextlinere printfre plusre

.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

libftmake:
	@make -C $(LIBFT)
	@make bonus -C $(LIBFT)
libftclean:
	@make clean -C $(LIBFT)
libftfclean:
	@make fclean -C $(LIBFT)
libftre: libftclean libftmake

nextlinemake:
	@make bonus -C $(NEXTLINE)
nextlineclean:
	@make bonus clean -C $(NEXTLINE)
nextlinefclean:
	@make bonus fclean -C $(NEXTLINE)
nextlinere: nextlinefclean nextlinemake

printfmake:
	@make -C $(PRINTF)
printfclean:
	@make clean -C $(PRINTF)
printffclean:
	@make fclean -C $(PRINTF)
printfre: printffclean printfmake

plusmake:
	@make -C $(PLUS)
plusclean:
	@make clean -C $(PLUS)
plusfclean:
	@make fclean -C $(PLUS)
plusre: plusfclean plusmake

submodules:
	@git submodule update --init
	@git submodule foreach git pull origin main
	

.PHONY : all clean fclean re submodules\
libftclean libftfclean libftmake \
nextlinemake nextlineclean nextlinefclean nextlinere \
printfmake printfclean printffclean printfre \
plusmake plusclean plusfclean plusre

#Personal use
git: fclean gitignore
	git add *
	git commit -m "AUTOMATIC COMMIT"
	git push
	git ls-files
gitignore:
	echo ".*\n*.out\n*.o\n*.a">.gitignore