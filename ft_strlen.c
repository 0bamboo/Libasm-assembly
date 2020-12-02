/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abdait-m <abdait-m@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/21 11:54:48 by abdait-m          #+#    #+#             */
/*   Updated: 2020/11/30 13:33:14 by abdait-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "assembly.h"

size_t	ft_strlen(const char *s)
{
	size_t		j;

	j = 0;
	while (*s != '\0')
	{
		j++;
		s++;
	}
	return (j);
}
