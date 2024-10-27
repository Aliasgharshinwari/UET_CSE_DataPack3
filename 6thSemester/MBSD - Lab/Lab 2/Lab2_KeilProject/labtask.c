#include<reg51.h>

int a, i ,j;

void delay(){

	for(i = 0; i<255; i++){
			for(j = 0; j<255; j++){
			}
	}
}
void main(){
		
		while(1){
			a = 0x01;
			P0 = a;
			delay();
			
			a = 0x02;
			P0 = a;
			delay();
			
			a = 0x04;
			P0 = a;
			delay();
			
			a = 0x08;
			P0 = a;
			
			
			a = 0x10;
			P0 = a;
			delay();
			
			a = 0x20;
			P0 = a;
			delay();
			
			a = 0x40;
			P0 = a;
			delay();
			
			a = 0x80;
			P0 = a;
			delay();
			
			a = 0x40;
			P0 = a;
			delay();
			
			a = 0x20;
			P0 = a;
			delay();
			
			a = 0x10;
			P0 = a;
			delay();
			
			a = 0x08;
			P0 = a;
			delay();
			
			a = 0x04;
			P0 = a;
			delay();
	
			a = 0x02;
			P0 = a;
			delay();
			
						
		}
}

