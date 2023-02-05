SRC	= src/main.c

OBJ	= $(SRC:.c=.o)

NAME	= exploit-mirror

RM	= rm -f

CC	= gcc

CFLAGS	= -lnetfilter_queue

LDFLAGS  = -pthread


all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $(NAME) $(CFLAGS)
	$(RM) $(OBJ)

clean:
	$(RM) $(OBJ)
	$(RM) $(NAME)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re