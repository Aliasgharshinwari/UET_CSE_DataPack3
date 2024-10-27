#include<reg51.h>

int a;

void main(){
		
		while(1){
			a = 0xFF;
			P1 = a;
			P2 = a;
			a = 0x00;
			P1 = a;
			P2 = a;
		}
}