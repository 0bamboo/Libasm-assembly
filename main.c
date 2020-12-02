/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             */
/*   Updated: 2020/12/02 14:58:09 by abdait-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include "assembly.h"

int     addpwnum(int num);

int     main(int argc, char **argv)
{
    int a,b;
    int n;
    int bz = 1;
    char *s = malloc(10);
    errno = 0;
    printf("================= WRITE FUNC : ================ \n");
    ft_write(1,"that's hahahah\n", -1);
	printf("| errno | = |%d|\n", errno);
    errno = 0;
    write(1,"that's hahahah\n", -1);
	printf("| errno | = |%d|\n", errno);
    printf("================ READ FUNC : ================= \n");
    errno = 0;
    int fd1 = open("test1", O_CREAT|O_RDWR, S_IRUSR|S_IWUSR);
	int fd2 = open("test1", O_CREAT|O_RDWR, S_IRUSR|S_IWUSR);
	n = ft_read(fd1, s, bz);
	printf("\n|ASM| ==> |%d| and |%s|\n", n, s);
	printf("| errno | = |%d|\n", errno);
	n =    read(fd2, s, bz);
	printf("\n|C| ==> |%d| and |%s|\n", n, s);
	printf("| errno | = |%d|\n", errno);
	close(fd1);
	close(fd2);

}