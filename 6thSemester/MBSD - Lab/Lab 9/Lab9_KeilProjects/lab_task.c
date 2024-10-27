#include<reg51.h>

sbit R1 = P2^0;
sbit R2 = P2^1;
sbit R3 = P2^2;
sbit R4 = P2^3;

sbit C1 = P2^4;
sbit C2 = P2^5;
sbit C3 = P2^6;

sbit LED0 = P1^0;
sbit LED1 = P1^1;
sbit LED2 = P1^2;
sbit LED3 = P1^3;
sbit LED4 = P1^4;
sbit LED5 = P1^5;
sbit LED6 = P1^6;
sbit LED7 = P1^7;

void seg(int n);

void main(void){
	P1 = 0x00;
	
	R1 = 0;
	R2 = R3 = R4 = 1;

	if(C1 == 0 && C2 == 1 && C3 == 1){//1 Pressed
		LED0 = 1;
		seg(1);
	}
	
	if(C1 == 1 && C2 == 0 && C3 == 1){//2 Pressed
		LED1 = 1;
		seg(2);
	}
	
	if(C1 == 1 && C2 == 1 && C3 == 0){//3 Pressed
		LED2 = 1;
		seg(3);
	}

		
	R2 = 0;
	R1 = R3 = R4 = 1;
	if(C1 == 0 && C2 == 1 && C3 == 1){//4 Pressed
		LED3 = 1;
		seg(4);
	}
	
	if(C1 == 1 && C2 == 0 && C3 == 1){//5 Pressed
		LED4 = 1;
		seg(5);
	}
	
	if(C1 == 1 && C2 == 1 && C3 == 0){//6 Pressed
		LED5 = 1;
		seg(6);
	}
	
			
	R3 = 0;
	R1 = R2 = R4 = 1;
	
	if(C1 == 0 && C2 == 1 && C3 == 1){//7 Pressed
		LED6 = 1;
		seg(7);
	}
	
	if(C1 == 1 && C2 == 0 && C3 == 1){//8 Pressed
		LED7 = 1;
		seg(8);
	}
	
	if(C1 == 1 && C2 == 1 && C3 == 0){//9 Pressed
		
		seg(9);
	}
	
	R4 = 0;
	R1 = R2 = R3 = 1;
	
//	if(C1 == 0 && C2 == 1 && C3 == 1){//* Pressed
//		seg(10);
//	}
	
	if(C1 == 1 && C2 == 0 && C3 == 1){//0 Pressed
		seg(0);
	}
	
//	if(C1 == 1 && C2 == 1 && C3 == 0){//# Pressed
//		seg(11);
//	}
}


void seg(int n){
		
		if(n == 0)
			P3 = 0x40; //0
		
		else if(n == 1)
			P3 = 0x79; //1
		
		else if(n == 2)
			P3 = 0x24; //2
			
		else if(n == 3)
			P3 = 0x30; //3
			
		else if(n == 4)
			P3 = 0x19; //4
			
		else if(n == 5)
			P3 = 0x12; //5
			
		else if(n == 6)
			P3 = 0x02; //6
			
		else if(n == 7)
			P3 = 0x78; //7
		
		else if(n == 8)
			P3 = 0x00; //8
		
		else if(n == 9)
			P3 = 0x18; //9
}