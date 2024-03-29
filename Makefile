NAME		= libft.a 
CC			= cc
CFLAGS		= -Wall -Wextra -Werror -I../include
LIB			= ar -rcs
SRCS		= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
			ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
			ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
			ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
			ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strlen.c \
			ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
			ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			ft_lstclear.c ft_lstiter.c ft_lstmap.c \
			get_next_line_bonus.c get_next_line_utils_bonus.c \
			ft_joinfree.c \
			ft_printf.c ft_print_di.c ft_print_p.c ft_print_s.c ft_print_u.c \
			ft_print_xx.c \
			fd_printf.c fd_print_di.c fd_print_p.c fd_print_s.c fd_print_u.c \
			fd_print_xx.c 

OBJS		= $(SRCS:.c=.o)

all: 		$(NAME)

$(NAME):	$(OBJS)
			@$(LIB)	$(NAME) $(OBJS)

.c.o: 		
			@$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re