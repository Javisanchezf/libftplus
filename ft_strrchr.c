/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/30 16:44:04 by javiersa          #+#    #+#             */
/*   Updated: 2023/03/23 19:34:58 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	unsigned char	character;

	character = (unsigned char)c;
	c = ft_strlen(s);
	while (c >= 0)
	{
		if (s[c] == character)
			return (&((char *)s)[c]);
		c--;
	}
	if (character == 0)
		return (&((char *)s)[c]);
	return (0);
}
