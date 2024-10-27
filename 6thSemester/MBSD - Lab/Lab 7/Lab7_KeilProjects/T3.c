#include<reg51.h>
#include<stdio.h>

sbit pin = P1^0;
sbit mode = P1^1;
sbit i_btn = P3^2;

void e_i_0 () interrupt 0{
	
	mode = ~mode;
	
}
void init_timer(){	
	if(mode){
			if(pin){
				TH0 = 0xF0;//6ms
				TL0 = 0x5F;
			}
			else{
				TH0 = 0xE8;//4ms
				TL0 = 0x8F;
			}	
		}
	else{
			if(pin){
				TH0 = 0xF8;//1.92ms
				TL0 = 0x7F;
			}
			else{
				TH0 = 0xFA;//1.32ms
				TL0 = 0xD7;
			}	
		}
}

void timer0() interrupt 1{
		init_timer();
}

void main(void){
	mode = 1;
	
	TR0 = 1;
	TMOD = 0x01;
	init_timer();
	IE = 0x83;
	IT0 = 1;
	EX0 = 1;

	while(1){
		while(TF0 == 0);
		pin = ~pin;
	}
}