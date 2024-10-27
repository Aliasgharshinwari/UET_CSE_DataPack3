#include<reg51.h>

sbit i_button = P3^2;

void e_i_0() interrupt 0{
	P1++;
}

void main(void){
	
	i_button = 1;
	EA = 1;
	EX0 = 1;
	IT0 = 1;

}

