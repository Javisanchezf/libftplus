/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_split.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/18 17:34:40 by javiersa          #+#    #+#             */
/*   Updated: 2023/05/18 17:37:02 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

void	ft_printf_split(char **split)
{
	int		i;

	i = 0;
	while (split[i] != NULL)
	{
		ft_printf("String %d: %s\n", i, split[i]);
		i++;
	}
}
