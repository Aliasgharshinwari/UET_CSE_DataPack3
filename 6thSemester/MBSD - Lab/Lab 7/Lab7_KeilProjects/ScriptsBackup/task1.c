#include<reg51.h>
#include<stdio.h>

sbit pin = P3^0;
sbit myBit = 0;

void start_timer0(){
	TR0 = 1;
}

void timer0() interrupt 1{
	
	if(myBit){
		TH0 = 0xFC; //800us delay
		TL0 = 0xDF;
	}
	
	else{
		TH0 = 0xFB; //1200us delay
		TL0 = 0x4F;
	}
	
}

void start_timer(){
	TMOD = 0x01;
	IE = 0x82;
}

void main(void){

			TR0 = 1;	 //Part of TCON reg
			start_timer();
			
			while(1){
				while(TF0 == 0);
				pin = ~pin;
			
			}
}
