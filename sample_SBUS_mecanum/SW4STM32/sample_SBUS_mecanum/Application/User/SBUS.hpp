/*
 * SBUS.hpp
 *
 *  Created on: 2020/03/08
 *      Author: yoshito.y
 */

#ifndef APPLICATION_USER_SBUS_HPP_
#define APPLICATION_USER_SBUS_HPP_

#include "mecanum.h"
#include ".\..\SW4STM32\sample_SBUS_mecanum\Application\User\SBUS_DIR.h"
const int emergancyStopPin = 38;

class SBUS {
private:
	void data_to_val_();
	void read_sentence_();
	void center_range();
	void data_encode_();
public:
	volatile bool SBUSlost = true; //trueで通信途絶により非常停止
	volatile bool emergencyStopState = false;
	char data_[26];
	int val_[19];
	long interval_;
	int count_;
	int send_data_[10];
	long millisCount_;
	long get_millis_();
	void millisCountUp_();
	int map(int, int, int, int, int);
	SBUS() {
		count_ = 0; //オブジェクト読み出し時の初期化
	}
//	_SBUS() {
//	}
	void loop_do(void (*move_func)());
//	void print_send_data();
	void get_send_data(int s_d[]) {
//		s_d = send_data_;
		for (int i = 0; i < 10; i++) {
			s_d[i] = send_data_[i];
		}
	}
	void count_init() {
		count_ = 0;
	}
	int get_count() {
		return count_;
	}
	int safe(int getData);
	int button(int num);
	void SBUSfailSafe(float A);
	void emergencyStop();
	void cancelEmergencyStop();
};

#endif /* APPLICATION_USER_SBUS_HPP_ */
