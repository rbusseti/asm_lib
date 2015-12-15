# include "libasm.h"

# include <stdio.h>
# include <stdlib.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <fcntl.h>

void    test_bzero(void);
void    test_strcat(void);
void    test_isalpha(void);
void    test_isdigit(void);
void    test_isalnum(void);
void    test_isascii(void);
void    test_isprint(void);
void    test_toupper(void);
void    test_tolower(void);
void    test_puts(void);
void    test_strlen(void);
void    test_memset(void);
void    test_memcpy(void);
void    test_strdup(void);
void    test_cat(char *file);

int     main(int argc , char **argv)
{
    char    *sep;


    sep = "\n\n<<------>>\n\n";
/*
    test_bzero();
    ft_putstr(sep);
    test_strcat();
    ft_putstr(sep);
    test_isalpha();
    ft_putstr(sep);
    test_isdigit();
    ft_putstr(sep);
    test_isalnum();
    test_isascii();
    ft_putstr(sep);
    test_isprint();

    test_toupper();
    ft_putstr(sep);
    test_tolower();
    ft_putstr(sep);
    test_puts();*/
    test_strlen();
    ft_putstr(sep);
    test_memset();
    ft_putstr(sep);
    test_memcpy();
    ft_putstr(sep);
    test_strdup();
    ft_putstr(sep);
    if (argc == 2)
        test_cat(argv[1]);
    else
        ft_putendl("bad argument for cat");
    return(0);
}

void    test_bzero(void)
{
    char    *str;
    int     len;
    int     i;

    ft_putendl("fta_bzero");
    i = 0;
    str = ft_strdup("bite\n");
    len = ft_strlen(str);
    ft_putstr(str);
    fta_bzero(str, len);
    while (i < len)
    {
        ft_putnbr((int)str[i]);
        ft_putchar('\n');
        i++;
    }
}

void    test_strcat(void)
{
    char    *str2;
    char    *str3;
    char    *str4;

    ft_putendl("fta_strcat");
    str4 = ft_strdup("bite");
    str2 = malloc(sizeof(char) * 20);
    str2[0] = 'b';
    str2[1] = 'i';
    str2[2] = 't';
    str2[3] = 'e';
    str2[4] = '\0';
    str3 = fta_strcat(str2, str4);
    ft_putstr(str3);
    ft_putchar('\n');
    ft_putstr(str2);
}

void    test_isalpha(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_isalpha(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_isdigit(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_isdigit(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_isalnum(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_isalnum(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_isascii(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_isascii(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_isprint(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_isprint(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_toupper(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_toupper(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putchar((char)result);
        ft_putstr(" : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }

}

void    test_tolower(void)
{
    int     i;
    int     result;

    i = 0;
    while (i < 256)
    {
        result = fta_tolower(i);
        ft_putnbr(i);
        ft_putstr(" : ");
        ft_putchar((char)i);
        ft_putstr(" : result : ");
        ft_putchar((char)result);
        ft_putstr(" : ");
        ft_putnbr(result);
        ft_putchar('\n');
        i++;
    }
}

void    test_puts(void)
{
    int     ret;

    ft_putendl("start");
    ret = fta_puts("Hello world!");
    ft_putnbr(ret);
    ft_putchar('\n');
    ft_putendl("caca");
    ft_putendl("start");
    ret = puts("Hello wordl!");
    ft_putnbr(ret);
    ft_putchar('\n');
    ft_putendl("caca");
}

void    test_strlen(void)
{
    int     size;
    char    *str;

    str = "1234567";
    size = fta_strlen(str);
    printf("size: %d\n", size);
    size = fta_strlen("");
    printf("size2: %d\n", size);
    ft_putendl(str);
}

void    test_memset(void)
{
    char    *str;
    char    *ret;

    str = malloc(sizeof(char) * 10);
    str[9] = '\0';
    ret = fta_memset(str, 'a', 9);
    ft_putendl("str");
    ft_putendl(str);
    ft_putendl("ret");
    ft_putendl(ret);
}

void    test_memcpy(void)
{
    char    *str;
    char    *str2;
    char    *ret;

    str = malloc(sizeof(char) * 10);
    fta_bzero(str, 10);
    str2 = "aaaaaaaaa";
    ret = fta_memcpy(str, str2, 9);
    ft_putendl("str");
    ft_putendl(str);
    ft_putendl("ret");
    ft_putendl(ret);
    fta_bzero(str, 10);
    str2 = "aaaaaaaaa";
    ret = fta_memcpy(str, str2, 4);
    ft_putendl("str");
    ft_putendl(str);
    ft_putendl("ret");
    ft_putendl(ret);
}

void    test_strdup(void)
{
    char    *dest;
    char    *src;

    src = "Hello world!";
    dest = fta_strdup(src);
    ft_putstr("src\n");
    ft_putendl(src);
    ft_putstr("dest\n");
    ft_putendl(dest);
}

void    test_cat(char *file)
{
    int     fd;

    fd = open(file, O_RDONLY);
    fta_cat(fd);
}
