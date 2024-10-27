#include<reg51.h>
#include<stdio.h>
sbit pin = P3^0;

void timer0() interrupt 1{
		TH0 = 0xFF;
		TL0 = 0x37;
}

void start_timer(){
	TMOD = 0x01;
	IE = 0x82;
}

void main(void){
			TR0 = 1;	
			start_timer();
			
			while(1){
				while(TF0 == 0);
						pin = ~pin;	
			}
}