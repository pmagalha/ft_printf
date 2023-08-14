# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmagalha <pmagalha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/02 17:05:43 by pmagalha          #+#    #+#              #
#    Updated: 2023/06/05 13:26:35 by pmagalha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC	= ft_putchar.c ft_putstr.c ft_putnbr.c ft_putnbr_u.c \
ft_printf.c ft_print_hexa.c ft_print_ptr.c \

OBJ_SRC	= $(SRC:.c=.o)

NAME	= libftprintf.a

FLAGS = -Wall -Wextra -Werror

CC	= cc

RM	= rm -f

AR	= ar rcs

# Colors
DEF_COLOR = \033[0;39m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
CYAN = \033[0;96m

all : $(NAME)

$(NAME): $(OBJ_SRC)
	ar rcs $(NAME) $(OBJ_SRC)
	@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"

clean:
	$(RM) $(OBJ_SRC)
	@echo "$(BLUE)ft_printf object files cleaned!$(DEF_COLOR)"

fclean: clean
	$(RM) $(NAME)

re : fclean $(NAME)
	@echo "$(GREEN)Cleaned and rebuilt everything for ft_printf!$(DEF_COLOR)"
