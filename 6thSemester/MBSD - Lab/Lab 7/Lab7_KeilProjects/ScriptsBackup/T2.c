#include<reg51.h>
sbit val = P1^0;
void set_timer(){	
	if(val){
		TH0 = 0xFD;
		TL0 = 0x67;
	}
	else{
		TH0 = 0xFC;
		TL0 = 0x1B;
	}	
}
void timer0() interrupt 1{
		set_timer();
}
void main(void){
	TR0 = 1;
	TMOD = 0x01;
	set_timer();
	IE = 0x82;
	while(1){
		while(TF0 == 0);
		val = ~val;
	}
}