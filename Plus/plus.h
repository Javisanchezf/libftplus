/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   plus.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/29 17:52:28 by javiersa          #+#    #+#             */
/*   Updated: 2023/03/29 17:55:58 by javiersa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PLUS_H
# define PLUS_H

# include "../42Malaga-libft/libft.h"

/*
*	@brief		Converts the initial portion of the string pointed to by
*				str to long. Discards any whitespace characters until the
*				first non-whitespace character is found. Then takes as many
*				characters as possible to form a valid long representation
*				and converts them to an long. The string can contain
*				optional plus or minus sign. If the first sequence of
*				non-whitespace characters in str is not a valid long
*				number, or if no such sequence exists because either str is
*				empty or it contains only whitespace characters, no conversion
*				is performed and zero is returned.
*
*	@param		str		String to be converted to long.
*
*	@return		The converted integral number as an long value. If no valid
*				conversion could be performed, a zero value is returned.
*/
long	ft_atoilong(const char *str);

/*
*	@brief	Check the leaks with this form: Add atexit(ft_void); at the end of	main.
*	@return		The memory that hasn't been released.
*/
void	ft_leaks(void);

/*
*	@brief	Swap two integers numbers.
*
*	@param		*a	The first number.
*	@param		*b	The second number.
*
*/
void	ft_swapint(int *a, int *b);

/*
*	@brief		Creates a new string allocating memory with malloc(3) joining
*				strings s1 and s2.
*
*	@param		s1	First string to be joined and be freed.
*	@param		s2	Second string to be joined.
*
*	@return		Pointer to the string created from joining strings s1 and s2.
*/
char	*ft_freeandjoin(char *buffer, char *aux);

/*
*	@brief		Free a pointer and asign NULL.
*	The correct form to use is ft_free_and_null((void **)&ptr);
*
*	@param		ptr	The pointer
*
*/
int		ft_free_and_null(void **ptr);

#endif