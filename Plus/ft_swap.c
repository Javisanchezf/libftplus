/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 21:39:02 by javiersa          #+#    #+#             */
/*   Updated: 2023/10/16 21:44:46 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

static void	*ft_swap_aux(void *dst, const void *src, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		((char *)dst)[i] = ((const char *)src)[i];
		i++;
	}
	return (dst);
}

void	ft_swap(void *a, void *b, size_t size)
{
	char	*tmp;

	tmp = ft_calloc(size + 1, sizeof(char));
	ft_swap_aux(tmp, a, size);
	ft_swap_aux(a, b, size);
	ft_swap_aux(b, tmp, size);
	ft_free_and_null((void **)&tmp);
}
