#include<reg51.h>

int i,k,l;

void delay(int limit){
				for(k = 0; k < limit; k++){
						for(l = 0; l < 1000; l++){}
				}
}

void main(void){	
			while(1){
				for(i = 0; i < 10; i++){
							P1 = i;
							delay(100);
				}
			}
}
