# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2023/11/08 21:33:29 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftplus.a
PERSONALNAME = Libftplus
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
PARAMS = NULL
DATETIME := $(shell date +%Y-%m-%d' '%H:%M:%S)

# Directories where the source files are located
LIBFT_DIR := 42Malaga-libft
NEXTLINE_DIR := 42Malaga-get_next_line
PRINTF_DIR := 42Malaga-ft_printf
PLUS_DIR := Plus

# Source files in each directory
LIBFT_SRCS := $(wildcard $(LIBFT_DIR)/*.c)
NEXTLINE_SRCS := $(NEXTLINE_DIR)/get_next_line_bonus.c $(NEXTLINE_DIR)/get_next_line_utils_bonus.c
PRINTF_SRCS := $(wildcard $(PRINTF_DIR)/*.c)
PLUS_SRCS := $(wildcard $(PLUS_DIR)/*.c)

ALL_SRCS = $(LIBFT_SRCS) $(NEXTLINE_SRCS) $(PRINTF_SRCS) $(PLUS_SRCS)

OBJS := $(ALL_SRCS:.c=.o)

# General rules

all: $(NAME)

.c.o:
	@$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
	@echo "$(GREEN)Compiling:$(DEFAULT) $(notdir $<)"

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

#Personal use
git: fclean gitignore
	@git add *
	@echo "$(BOLD)$(YELLOW)Git:$(WHITE) Adding all archives.$(DEFAULT)"
	@git commit -m "Little changes $(DATETIME)"
	@echo "$(BOLD)$(CYAN)Git :$(WHITE) Commit this changes in brunch with "Little changes $(DATETIME)".$(DEFAULT)"
	@git push
	@echo "$(BOLD)$(GREEN)Git:$(WHITE) Pushing all changes.$(DEFAULT)"
submodules:
	@git submodule update --init --recursive
	@echo "$(GREEN)The submodules have been created and updated successfully.$(DEFAULT)"
gitignore:
	@echo ".*\n*.out\n*.o\n*.a">.gitignore
	@echo "$(GREEN)Creating:$(DEFAULT) Gitignore."
42prepare: submodules
	@rm -rf .git*
	@echo "$(GREEN)All .git removed.$(DEFAULT)"
valgrind_datarace: $(PROGRAM)
	valgrind --tool="helgrind" ./$(PROGRAM) $(PARAMS)
valgrind_leaks: $(PROGRAM)
	valgrind --leak-check=full ./$(PROGRAM) $(PARAMS)

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

.PHONY : all clean fclean re \
	git submodules gitignore 42prepare valgrind_datarace valgrind_leaks