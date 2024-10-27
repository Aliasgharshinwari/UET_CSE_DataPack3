#include<reg51.h>
void delay();

void main(void){
	
	while(1){
		P0 = 0x00;
		
		for(;;){
			P0 = 0xF9;
			delay();
		}
	}
}
void delay(){
	unsigned int y;
	for(y = 0; y<30000; y++){
	}
}
