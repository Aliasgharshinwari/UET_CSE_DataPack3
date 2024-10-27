#include<reg51.h>

sbit pin = P1^2;
char state = 0;

sbit i_btn = P3^2;

void delay_us(unsigned int);
void int_fun();

void main(void){
		pin = 0;
		EA = 1;
		EX0 = 1;
		IT0 = 1; //Edge triggered interrupt
	
	while(1){
		
		if(state == 0){
			pin = 1;		
			delay_us(10000); //delay of 10ms
			pin = 0;		
			delay_us(45000); //delay of 45ms		
			delay_us(45000); //delay of 45ms, Total = 90ms		
		}
		
		else if(state == 1){
			pin = 1;		
			delay_us(10000); //delay of 10ms
			pin = 0;		
			delay_us(40000); //delay of 40ms		
		}
		
		else if(state == 2){
			pin = 1;		
			delay_us(10000); //delay of 10ms
			pin = 0;		
			delay_us(15000); //delay of 15ms		
		}
		
		else { //state = 3
			pin = 1;		
			delay_us(10000); //delay of 10ms
			pin = 0;		
			delay_us(2500); //delay of 2.5ms		
		}
		
		
	}
}
void int_fun() interrupt 0{
	state++;
	if(state > 3 | state < 0 )
		state = 0;
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