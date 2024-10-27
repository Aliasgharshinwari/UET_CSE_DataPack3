#include<reg51.h>
sbit pin = P1^0;

void init_timer(){
	TH0 = 0xFC;
	TL0 = 0x17;
}
void timer0() interrupt 1{
		init_timer();
}
void main(void){
	TR0 = 1;
	TMOD = 0x01;
	init_timer();
	IE = 0x82;

	while(1){
		while(TF0 == 0);
		pin = ~pin;
	}
}