/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free_and_null.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/22 18:00:49 by javiersa          #+#    #+#             */
/*   Updated: 2023/03/29 18:04:15 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

int	ft_free_and_null(void **ptr)
{
	if (*ptr != NULL)
	{
		free(*ptr);
		*ptr = NULL;
	}
	return (0);
}
