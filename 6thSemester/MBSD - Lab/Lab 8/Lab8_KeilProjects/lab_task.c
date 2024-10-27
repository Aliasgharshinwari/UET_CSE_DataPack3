#include<reg51.h>

sbit btn = P3^4;
int unit, ten;

void main(void){
	
			//start_timer();
			TMOD = 0x06; // 0000 0110
			TH0 = 0x00;
			TL0 = 0x00;
			TR0 = 1;	 //Part of TCON reg
	
			while(1){
				unit = TL0 % 10;
				ten= TL0 / 10;
				
				P1 = (ten << 4) | unit;
			}
}
