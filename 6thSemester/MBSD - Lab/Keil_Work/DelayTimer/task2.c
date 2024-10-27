#include<reg51.h>
#include<stdio.h>

sbit pin = P3^0;

void start_timer0(){
	TR0 = 1;
}

void timer0() interrupt 1{
	TH0 = 0x3C;
	TL0 = 0xAF;
}

void start_timer(){
	TMOD = 0x01;
	IE = 0x82;
}

void main(void){

			//start_timer0();
			TR0 = 1;	
			start_timer();
			
			while(1){
				
				while(TF0 == 0);
				pin = ~pin;
			
			}
}
