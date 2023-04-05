/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hex_to_dec.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/05 12:52:21 by javiersa          #+#    #+#             */
/*   Updated: 2023/04/05 12:54:11 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

int	ft_hex_to_dec(const char *hex)
{
	int		len;
	int		dec;
	int		base;
	char	c;

	len = ft_strlen(hex);
	dec = 0;
	base = 1;
	while (len-- > 0)
	{
		c = hex[len];
		if (c >= '0' && c <= '9')
			dec += (c - '0') * base;
		else if (c >= 'a' && c <= 'f')
			dec += (c - 'a' + 10) * base;
		else if (c >= 'A' && c <= 'F')
			dec += (c - 'A' + 10) * base;
		base *= 16;
	}
	return (dec);
}