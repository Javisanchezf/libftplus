# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2023/03/29 21:47:05 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftplus.a
PERSONALNAME = Libftplus
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
LIBFT = 42Malaga-libft
NEXTLINE = 42Malaga-get_next_line
PRINTF = 42Malaga-ft_printf
PLUS = Plus

all: libftmake nextlinemake printfmake plusmake
	@ar -rcs $(NAME) ./42Malaga-ft_printf/*.o ./42Malaga-get_next_line/*.o 42Malaga-libft/*.o Plus/*.o
clean: libftclean nextlineclean printfclean plusclean
fclean: libftfclean nextlinefclean printffclean plusfclean
	@rm -rf $(NAME)
	@echo "$(RED)$(PERSONALNAME) -> Library deleted.$(DEFAULT)"
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
	@git submodule update --init --recursive
	@echo "$(GREEN)The submodules have been created and updated successfully.$(DEFAULT)"
	

.PHONY : all clean fclean re submodules git gitignore 42prepare\
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
	@echo ".*\n*.out\n*.o\n*.a">.gitignore
	@echo "$(GREEN)Gitignore created successfully.$(DEFAULT)"
42prepare: submodules
	@rm -rf $(LIBFT)/.git
	@rm -rf $(NEXTILE)/.git
	@rm -rf $(PRINTF)/.git
	@rm -rf .git .gitmodules
	@echo "$(GREEN)All .git removed.$(DEFAULT)"

#COLORS
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
DEFAULT = \033[0m