/*
 * mecanum.c
 *
 *  Created on: 2020/03/10
 *      Author: yoshito.y
 */
#include "mecanum.h"

DIR Dir;

//float rad = 0.0;
int FLpow, FRpow, BLpow, BRpow;
void mecanumCon(MOTOR *pMotor) {
	int AMP = 127;

	Dir.lx = ((float) Dir.lx / 255.0);
	Dir.ly = (float) Dir.ly / 255.0;
	Dir.rx = -((float) Dir.rx / 255.0);
	if (Dir.lx > 255.0)
		Dir.lx = 255.0;
	if (Dir.ly > 255.0)
		Dir.ly = 255.0;
	if (Dir.rx > 255.0)
		Dir.rx = 255.0;

	char printbuff[128] = "";

	float power = 0.0;
	float rad = 0.0;
	power = fabs(Dir.lx + Dir.ly);
	rad = atan2(Dir.ly, Dir.lx);
	if (Dir.ly < 0) {
		rad += 6.28;
	}

	pMotor->FRp = /*(char)*/((sin(rad) - cos(rad)) * power * AMP
			+ (Dir.rx) * AMP);
	pMotor->BLp = /*(char)*/((sin(rad) - cos(rad)) * power * AMP
			- (Dir.rx) * AMP);
	pMotor->FLp = /*(char)*/((sin(rad) + cos(rad)) * power * AMP
			- (Dir.rx) * AMP);
	pMotor->BRp = /*(char)*/((sin(rad) + cos(rad)) * power * AMP
			+ (Dir.rx) * AMP);

//	FRpow = /*(char)*/ ((sin(rad) - cos(rad)) * power * AMP + (Dir.rx) * AMP);
//	BLpow = /*(char)*/ ((sin(rad) - cos(rad)) * power * AMP - (Dir.rx) * AMP);
//	FLpow = /*(char)*/ ((sin(rad) + cos(rad)) * power * AMP - (Dir.rx) * AMP);
//	BRpow = /*(char)*/ ((sin(rad) + cos(rad)) * power * AMP + (Dir.rx) * AMP);

//	mecanumConvert(pMotor);
}

void mecanumConvert(MOTOR *pMotor) {
	float adjustFLp = 18;
	float adjustFRp = 18;
	float adjustBLp = 18;
	float adjustBRp = 18;
	switch ((int) (Dir.A)) {
	case 1:
		pMotor->speedRatio = 30;
		break;
	case 2:
		pMotor->speedRatio = 100;
		break;
	default:
		pMotor->speedRatio = 0;
		break;
	}
}

void printMecanum(MOTOR Motor) {
	xprintf("%d", (int) Motor.FLp);
	xprintf(" ");
	xprintf("%d", (int) Motor.FRp);
	xprintf(" ");
	xprintf("%d", (int) Motor.BLp);
	xprintf(" ");
	xprintf("%d", (int) Motor.BRp);
	xprintf("\n");
}
