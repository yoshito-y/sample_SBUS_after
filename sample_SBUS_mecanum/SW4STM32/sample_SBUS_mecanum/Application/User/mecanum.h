/*
 * mecanum.h
 *
 *  Created on: 2020/03/10
 *      Author: yoshito.y
 */

#ifndef APPLICATION_USER_MECANUM_H_
#define APPLICATION_USER_MECANUM_H_
#include "wrapper.hpp"
#include "math.h"
#include ".\..\SW4STM32\sample_SBUS_mecanum\Application\User\SBUS_DIR.h"



typedef struct {
  float FLp, FRp, BLp, BRp;
  float speedRatio;
} MOTOR;


void mecanumCon(MOTOR *pMotor);
void mecanumConvert(MOTOR *pMotor) ;
void printMecanum(MOTOR Motor);
#endif /* APPLICATION_USER_MECANUM_H_ */
