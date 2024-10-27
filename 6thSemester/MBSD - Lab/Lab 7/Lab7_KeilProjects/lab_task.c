#include<reg51.h>
#include<stdio.h>

sbit pin = P1^2;
sbit flag = P2^3;

sbit btn = P3^2;

void start_timer0(){
	TR0 = 1;
}

void e_i_0() interrupt 0{
	flag = ~flag; 
}

void timer0() interrupt 1{
	
	if(flag){
			if(~pin){
				TH0 = 0xF8; //2ms delay
				TL0 = 0x2F;
			}
			
			else{
				TH0 = 0xFA; //1.3ms delay
				TL0 = 0xEB;
			}
		}
	
	else{
			if(~pin){
				TH0 = 0xF0; //4ms delay
				TL0 = 0x5F;
			}
			
			else{
				TH0 = 0xE8; //6ms delay
				TL0 = 0x8F;
			}
		}
	}

void start_timer(){
	TMOD = 0x01;
	IE = 0x83;
}

void main(void){
			btn = 1;
			TR0 = 1;	 //Part of TCON reg
			EX0 = 1;
			IT0 = 1;
	
			start_timer();
			
			while(1){
				while(TF0 == 0);
				pin = ~pin;
			}
}
