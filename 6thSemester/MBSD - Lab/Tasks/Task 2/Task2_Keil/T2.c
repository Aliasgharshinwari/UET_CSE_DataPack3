#include<reg51.h>

sbit pin = P1^2;
sbit i_flag = P1^3;

sbit i_btn = P3^2;

void delay_us(unsigned int);
void int_fun();

void main(void){
		pin = 0;
		i_flag = 0;
		EA = 1;
		EX0 = 1;
		IT0 = 1; //Edge triggered interrupt
	
	while(1){
		
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
void int_fun() interrupt 0{
	i_flag = ~i_flag;
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