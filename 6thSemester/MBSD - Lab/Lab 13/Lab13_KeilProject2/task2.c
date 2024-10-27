#include<reg51.h>
int i;
void delay(int n){
   for(i = 0; i< n; i++){
   }
}

void serial_comm(){
	TMOD = 0x20;
	TH1 = 0xFD;
	SCON = 0x50;
	PCON = 0x00;
	TR1 = 1;
}

void main(){
   serial_comm();
	
   while(1){
		 while(RI == 0){
			RI = 0;
			 P1 = SBUF;
		 }
   }
}

