/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split_free.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/18 17:27:03 by javiersa          #+#    #+#             */
/*   Updated: 2023/06/01 17:57:35 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

void	ft_split_free(char **str)
{
	char	**ptr;

	if (str == NULL)
		return ;
	ptr = str;
	while (*ptr != NULL)
	{
		ft_free_and_null((void **)&*ptr);
		ptr++;
	}
	ft_free_and_null((void **)&str);
}
