/*
 * wrapper.cpp
 *
 *  Created on: 2020/03/08
 *      Author: yoshito.y
 */

#include "wrapper.hpp"

SBUS instance;

long get_millis_() {
//	SBUS instance;
	return instance.get_millis_();
}

void millisCountUp_() {
//	SBUS instance;
	instance.millisCountUp_();
}

void loop_do(void (*move_func)()){
	instance.loop_do(move_func);
}

int get_count(){
	return instance.get_count();
}

void get_send_data_(int s_d[]){
	instance.get_send_data(s_d);
}

//void read_sentence_() {
//	SBUS instance;
//	instance.read_sentence_();
//}
