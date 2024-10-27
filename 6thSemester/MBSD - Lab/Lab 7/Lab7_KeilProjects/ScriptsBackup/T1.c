#include<reg51.h>
sbit val = P1^0;

void time0() interrupt 1{
	TH0 = 0xFC;
	TL0 = 0x17;
}
void main(void){
	TR0 = 1;
	TMOD = 0x01;
	TH0 = 0xFC;
	TL0 = 0x17;
	IE = 0x82;

	while(1){
		while(TF0 == 0);
		val = ~val;
	}
}