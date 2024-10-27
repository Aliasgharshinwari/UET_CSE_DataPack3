#include<reg51.h>

sbit btn = P3^4;
int i,j,k,l;

void delay(int limit){
				for(k = 0; k < limit; k++){
						for(l = 0; l < 1000; l++){}
				}
}

void main(void){
	
			while(1){
				for(i = 0; i < 10; i++){
						for(j = 0; j < 10; j++){
						//		P1 = i*10 + j;
								// Convert to BCD
								P1 = (i << 4) | j;
								delay(100);
						}
				}
			}
}
