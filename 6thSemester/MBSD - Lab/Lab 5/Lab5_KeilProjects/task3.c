#include<reg51.h>
void delay();

void main(void){
	
	while(1){
		P0 = 0x40; //0
		delay();
		P0 = 0x79; //1
		delay();
		P0 = 0x24; //2
		delay();
		P0 = 0x30; //3
		delay();
		P0 = 0x19; //4
		delay();
		P0 = 0x12; //5
		delay();
		P0 = 0x02; //6
		delay();
		P0 = 0x78; //7
		delay();
		P0 = 0x00; //8
		delay();
		P0 = 0x18; //9
	}
}
void delay(){
	unsigned int y, x;
	for(x = 0; x<30000; x++);
	for(y = 0; y<30000; y++);
}
