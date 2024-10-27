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
  // delay(10);
   wr = 1;
   
   while(intr == 1);
   
    rd = 0;
   //temp = P1;
   delay(10);
   //return temp;
}

void main(){
   
   while(1){
      ADC();
   }
}

