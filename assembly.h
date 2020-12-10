/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   assembly.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/30 12:47:52 by abdait-m          #+#    #+#             */
/*   Updated: 2020/12/10 12:55:47 by abdait-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>
# include <errno.h>


int             ft_write(int fd, char *str, size_t n);
int             ft_read(int fd, void *buff, size_t n);
size_t          ft_strlen(const char *str);
int             ft_strcmp(const char *s1, const char *s2);
char            *ft_strcpy(char *dst, const char *src);
char            *ft_strdup(const char *s);