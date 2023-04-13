/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_freeandjoin.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/09 19:00:01 by javiersa          #+#    #+#             */
/*   Updated: 2023/04/13 20:20:27 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "plus.h"

char	*ft_freeandjoin(char *buffer, char *aux)
{
	char	*strjoin;

	strjoin = ft_strjoin(buffer, aux);
	ft_multiple_free(2, buffer, aux);
	return (strjoin);
}
