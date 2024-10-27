#include<reg51.h>

sbit pin = P1^2;
sbit i_btn = P1^1;
sbit i_flag = P1^3;

void delay_us(unsigned int);

void main(void){
		pin = 0;
		i_flag = 0;
	
	
	while(1){
			
		if(i_btn){
			i_flag = ~i_flag;
		}
		
		if(i_flag == 0){
			pin = 1;		
			delay_us(2000); //delay of 2ms
			pin = 0;		
			delay_us(3000); //delay of 3ms		
		}
		
		else{
			pin = 1;		
			delay_us(6000); //delay of 6ms
			pin = 0;		
			delay_us(4000); //delay of 4ms		
		}
		
	}
}


void delay_us(unsigned int value){
	
	TMOD = 0x01;
	TL0 = (~value);
	TH0 = (~value >> 8);
	TR0 = 1;
	
	while(!TF0);
	TR0 = 0;
	TF0 = 0;
	TL0 = 0;
	TH0 = 0;
	
}