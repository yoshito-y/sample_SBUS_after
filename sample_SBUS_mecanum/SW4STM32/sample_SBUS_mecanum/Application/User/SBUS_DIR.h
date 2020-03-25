/*
 * SBUS_DIR.h
 *
 *  Created on: 2020/03/24
 *      Author: yoshito.y
 */

#ifndef APPLICATION_USER_SBUS_DIR_H_
#define APPLICATION_USER_SBUS_DIR_H_
#include ".\..\SW4STM32\sample_SBUS_mecanum\Application\User\xprintf.h"
#include "wrapper.hpp"

typedef struct {
	float lx, ly, rx, ry;
	float FL, FR, BL, BR;
	float A, B, C, D;
} DIR;

DIR get_Dir() ;

void printDir(DIR d) ;

#endif /* APPLICATION_USER_SBUS_DIR_H_ */
