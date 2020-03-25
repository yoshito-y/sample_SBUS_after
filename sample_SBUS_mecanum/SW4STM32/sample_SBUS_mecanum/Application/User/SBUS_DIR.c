/*
 * SBUS_DIR.c
 *
 *  Created on: 2020/03/24
 *      Author: yoshito.y
 */

#include "SBUS_DIR.h"

DIR get_Dir() {
	DIR d;
	int send_data_[10];
	get_send_data_(send_data_);
	d.lx = (float)send_data_[3];
	d.ly = (float)send_data_[1];
	d.rx = (float)send_data_[0];
	d.ry = (float)send_data_[2];
	d.A = (float)send_data_[4];
	d.B = (float)send_data_[5];
	d.C = (float)send_data_[6];
	d.D = (float)send_data_[7];
	return d;
}

void printDir(DIR d) {
//	get_Dir();
//float s=1.5;
//	xprintf("%f\n",s);
	xprintf("%d", (int) d.lx);
	xprintf("  ");
	xprintf("%d", (int) d.ly);
	xprintf("  ");
	xprintf("%d", (int) d.rx);
	xprintf("  ");
	xprintf("%d", (int) d.ry);
	xprintf("  ");
	xprintf("%d", (int) d.A);
	xprintf("  ");
	xprintf("%d", (int) d.B);
	xprintf("  ");
	xprintf("%d", (int) d.C);
	xprintf("  ");
	xprintf("%d", (int) d.D);
	xprintf("\n");
}
