#include<reg51.h>

sbit p_btn = P2^0;
sbit p_led = P2^1;
sbit i_btn = P3^2;
sbit i_led = P2^4;
int i = 0;

void e_i_0();

void main(void){
	p_btn = 1;
	i_btn = 1;
//	EA = 1;
//	EX0 = 1;
	IE=0x81;
	
	//IT0 = 1;
	while(1){
		if(p_btn == 0)
			p_led = 1;
		
		else
			p_led = 0;
	}

}
void e_i_0() interrupt 0{

	for(i = 0; i<100; i++);
	i_led ^= 1; 
}
