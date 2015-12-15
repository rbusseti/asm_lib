NAME = test

DEBUGNAME = debug

SRC = main.c

OBJ = $(SRC:.c=.o)

ASMSRC = ft_bzero.asm ft_strcat.asm ft_isalpha.asm ft_isdigit.asm \
	ft_isalnum.asm ft_isascii.asm ft_isprint.asm ft_toupper.asm \
	ft_tolower.asm ft_puts.asm ft_strlen.asm ft_memset.asm \
	ft_memcpy.asm ft_strdup.asm ft_cat.asm

ASMOBJ = ft_bzero.o ft_strcat.o ft_isalpha.o ft_isdigit.o \
	ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o \
	ft_tolower.o ft_puts.o ft_strlen.o ft_memset.o \
	ft_memcpy.o ft_strdup.o ft_cat.o

FLAGS = -Wall -Wextra

INC = -I libft/includes/ -I Includes/

LIB = -L libft/ -lft

CC = gcc

all: $(NAME)

asm:
	nasm -f elf64 -o ft_bzero.o ft_bzero.asm
	nasm -f elf64 -o ft_strcat.o ft_strcat.asm
	nasm -f elf64 -o ft_isalpha.o ft_isalpha.asm
	nasm -f elf64 -o ft_isdigit.o ft_isdigit.asm
	nasm -f elf64 -o ft_isalnum.o ft_isalnum.asm
	nasm -f elf64 -o ft_isascii.o ft_isascii.asm
	nasm -f elf64 -o ft_isprint.o ft_isprint.asm
	nasm -f elf64 -o ft_toupper.o ft_toupper.asm
	nasm -f elf64 -o ft_tolower.o ft_tolower.asm
	nasm -f elf64 -o ft_puts.o ft_puts.asm
	nasm -f elf64 -o ft_strlen.o ft_strlen.asm
	nasm -f elf64 -o ft_memset.o ft_memset.asm
	nasm -f elf64 -o ft_memcpy.o ft_memcpy.asm
	nasm -f elf64 -o ft_strdup.o ft_strdup.asm
	nasm -f elf64 -o ft_cat.o ft_cat.asm

asmdebug:
	nasm -g -f elf64 -o ft_bzero.o -F dwarf ft_bzero.asm
	nasm -g -f elf64 -o ft_strcat.o -F dwarf ft_strcat.asm
	nasm -g -f elf64 -o ft_isalpha.o -F dwarf ft_isalpha.asm
	nasm -g -f elf64 -o ft_isdigit.o -F dwarf ft_isdigit.asm
	nasm -g -f elf64 -o ft_isalnum.o -F dwarf ft_isalnum.asm
	nasm -g -f elf64 -o ft_isascii.o -F dwarf ft_isascii.asm
	nasm -g -f elf64 -o ft_isprint.o -F dwarf ft_isprint.asm
	nasm -g -f elf64 -o ft_toupper.o -F dwarf ft_toupper.asm
	nasm -g -f elf64 -o ft_tolower.o -F dwarf ft_tolower.asm
	nasm -g -f elf64 -o ft_puts.o -F dwarf ft_puts.asm
	nasm -g -f elf64 -o ft_strlen.o -F dwarf ft_strlen.asm
	nasm -g -f elf64 -o ft_memset.o -F dwarf ft_memset.asm
	nasm -g -f elf64 -o ft_memcpy.o -F dwarf ft_memcpy.asm
	nasm -g -f elf64 -o ft_strdup.o -F dwarf ft_strdup.asm
	nasm -g -f elf64 -o ft_cat.o -F dwarf ft_cat.asm

$(NAME): asm $(OBJ)
	make -C libft
	$(CC) -o $(NAME) $(OBJ) $(ASMOBJ) $(FLAGS) $(LIB) $(INC)

%.o:%.c
	$(CC) $(FLAGS) -c -o $@ $^ $(INC)

debug: asmdebug
	make -C libft/
	$(CC) -g -o $(DEBUGNAME) $(ASMOBJ) $(SRC) $(FLAGS) $(LIB) $(INC)

clean:
	rm -rf $(OBJ) $(ASMOBJ)
	rm -rf debug

fclean: clean
	rm -rf $(NAME)

re: fclean all