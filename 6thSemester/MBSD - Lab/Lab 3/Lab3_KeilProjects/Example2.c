#include<reg51.h>
#include<stdio.h>

sbit MyBit = P1^0;

void main(void){

	unsigned int i;
	
	for(i = 0; i<=500; i++){
		MyBit = 0;
		for(i = 0; i<=10000; i++);
		for(i = 0; i<=10000; i++);
		for(i = 0; i<=10000; i++);
		MyBit = 1;
	}
}