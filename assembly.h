/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   assembly.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/30 12:47:52 by abdait-m          #+#    #+#             */
/*   Updated: 2020/12/02 13:27:57 by abdait-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <string.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>
# include <errno.h>

int     ft_write(int fd, char *str, size_t n);
int     ft_read(int fd, void *buff, size_t n);