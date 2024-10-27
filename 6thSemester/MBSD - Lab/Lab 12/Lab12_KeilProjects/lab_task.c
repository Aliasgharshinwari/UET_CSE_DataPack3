#include<reg51.h>
#include<stdio.h>

char state;
sbit btn = P3^2;
int i;

void sinewave();
void squarewave();
void sawtoothwave();
void triangularwave();

void int_fun() interrupt 0{
	state++;
	if(state > 3 | state < 0 )
		state = 0;
}


void main(void){
		EA = 1;
		EX0 = 1;
		IT0 = 1; //Edge triggered interrupt
		P1 = 0x00;
		
		while(1){		
		
			if(state == 0)
				squarewave();
		
			else if(state == 1)
				sinewave();	
			
			else if(state == 2)
				sawtoothwave();	
			
			else if(state == 3)
				triangularwave();	
		}
}

void sinewave(){

	char sine_val[21] = {0, 13, 20, 54, 76, 100, 132, 180, 210, 233, 255, 233, 210, 180, 132, 100, 76, 54, 20, 13, 0 };
	
	for(i = 0; i<20; i++)
		P1 = sine_val[i];
}

void squarewave(){	
		P1 = 0x00;
		for(i = 0; i<20000; i++)
		P1 = 0xFF;
}


void sawtoothwave(){
	char sawtooth_val[] = {255, 233, 210, 180, 132, 100, 76, 54, 20, 13, 0 };
	
	for(i = 0; i<20; i++)
			P1 = sawtooth_val[i];
}

void triangularwave(){

	char triangular_val[] = {0, 4, 8, 16, 32, 64, 128, 255, 128, 64, 32, 16, 8, 4, 2, 0};
	
	for(i = 0; i<16; i++)
		P1 = triangular_val[i];
}
