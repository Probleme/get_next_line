# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ataouaf <ataouaf@student.1337.ma>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/26 16:21:20 by ataouaf           #+#    #+#              #
#    Updated: 2022/11/26 18:54:12 by ataouaf          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = get_next_line.c get_next_line_utils.c

CC = cc

CFLAGS = -Wall -Wextra -Werror -c

OBJS = ${SRCS:.c=.o}

NAME = getnextline.a

RM = rm -f

all : ${NAME}

${NAME} : ${OBJS}
	ar -rc $@ $^

%.o : %.c get_next_line.h
	${CC} ${CFLAGS} $< -o $@

clean :
	${RM} ${OBJS}

fclean : clean
	${RM} ${NAME} 

re : fclean all 

.PHONY : clean all fclean re