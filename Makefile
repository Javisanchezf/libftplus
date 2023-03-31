# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2023/03/31 20:31:36 by javiersa         ###   ########.fr        #
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
INCLUDE = inclue

all: libftmake nextlinemake printfmake plusmake $(NAME)
$(NAME):
	libtool -static -o $(NAME) $(LIBFT)/libft.a $(PRINTF)/libftprintf.a \
	$(NEXTLINE)/get_next_line.a $(PLUS)/plus.a
	echo "$(MAGENTA)Static library union $(NAME) created successfully.$(DEFAULT)"
clean: libftclean nextlineclean printfclean plusclean
fclean: libftfclean nextlinefclean printffclean plusfclean
	@$(CLEAN) ./$(NAME)
	@echo "$(RED)Removing:$(DEFAULT) Static library union $(NAME)."
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
	@make fclean -C $(NEXTLINE)
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
	git commit -m "Little changes"
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