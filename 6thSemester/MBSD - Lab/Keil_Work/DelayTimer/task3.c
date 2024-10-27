#include<reg51.h>
#include<stdio.h>

sbit pin = P3^0;
int count = 0;

void timer0() interrupt 1{
		TH0 = 0x3C;
		TL0 = 0xAF;
		count++;
				
}

void main(void){

			//start timer0
			TR0 = 1;	
			TMOD = 0x01;
			IE = 0x82;
			
			while(1){
				
//			while(TF0 == 0);

				if(count == 2){ 
						pin = ~pin;	
						count = 0;
						//TR0 = 0;
						//TF0 = 0;
				}
			}
}
