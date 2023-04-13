/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_multiple_free.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/13 18:56:30 by javiersa          #+#    #+#             */
/*   Updated: 2023/04/13 19:13:13 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

void	ft_multiple_free(int num_args, ...)
{
	va_list	args;
	void	*ptr;
	int		i;

	i = -1;
	va_start(args, num_args);
	while (++i < num_args)
	{
		ptr = va_arg(args, void *);
		ft_free_and_null((void **)&ptr);
	}
	va_end(args);
}
