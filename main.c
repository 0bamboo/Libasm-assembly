/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/30 13:13:50 by abdait-m          #+#    #+#             */
/*   Updated: 2020/12/02 14:28:33 by abdait-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include "assembly.h"

int     addpwnum(int num);

int     main(int argc, char **argv)
{
    int a,b;
    int n;
    int bz = 5;
    char *s = malloc(10);
    printf("================= WRITE FUNC : ================ \n");
    ft_write(1,"that's hahahah\n", 16);
    write(1,"that's hahahah\n", 16);
    printf("================ READ FUNC : ================= \n");
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