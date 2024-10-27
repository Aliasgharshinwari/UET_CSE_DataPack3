#include<reg51.h>
#include<stdio.h>

sbit switch1 = P2^1;
sbit switch2 = P2^2;
sbit switch3 = P2^3;

void main(void){

	while(1){
	
		if(switch1 == 1 & switch2 == 1 & switch3 == 1){
			P1 = 0x01;
		}
		else if(switch1 == 1 & switch2 == 1 & switch3 == 0){
			P1 = 0x02;
		}	
		
		else if(switch1 == 1 & switch2 == 0 & switch3 == 1){
			P1 = 0x04;
		}
		
		else if(switch1 == 1 & switch2 == 0 & switch3 == 0){
			P1 = 0x08;
		}
		
		else if(switch1 == 0 & switch2 == 1 & switch3 == 1){
			P1 = 0x10;
		}
		
		else if(switch1 == 0 & switch2 == 1 & switch3 == 0){
			P1 = 0x20;
		}
		
		else if(switch1 == 0 & switch2 == 0 & switch3 == 1){
			P1 = 0x40;
		}
		
		else {
			P1 = 0x80;
		}
	}
}