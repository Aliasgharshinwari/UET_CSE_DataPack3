#include<reg51.h>

sbit intr = P3^2;
sbit rd = P3^4;
sbit wr = P3^5;
int i, temp;

void delay(int n){
   for(i = 0; i< n; i++){
   }
}

void ADC(){
   rd = 1;
   wr = 0;
   delay(10);
   wr = 1;
   while(intr == 1);
    rd = 0;
   delay(10);
  
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
      ADC();
		 SBUF = P1;
		 while(TI == 0);
			TI = 0;
   }
}

