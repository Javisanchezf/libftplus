/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split_size.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/20 12:08:28 by javiersa          #+#    #+#             */
/*   Updated: 2023/05/20 12:08:41 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

int	ft_split_size(char **split)
{
	int	i;

	i = 0;
	if (split && *split && **split)
		while (split[i])
			i++;
	return (i);
}
