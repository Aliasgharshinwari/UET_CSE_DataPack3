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
			P0 = P0<<1;
			delay();
			
			//P0 = 0x02;
			//delay();
			
			//P0 = 0x04;
			//delay();
			
			//P0 = 0x08;
			//delay();
			
			//P0 = 0x10;
			//delay();
			
			//P0 = 0x20;
			//delay();
			
			//P0 = 0x40;
			//delay();
			
			//P0 = 0x80;
			//delay();
			
			//P0 = 0x40;
			//delay();
			
			//P0 = 0x20;
			//delay();
			
			//P0 = 0x10;
			//delay();
			
			//P0 = 0x08;
			//delay();
			
			//P0 = 0x04;
			//delay();
	
			//P0 = 0x02;
			//delay();			
		}
}

