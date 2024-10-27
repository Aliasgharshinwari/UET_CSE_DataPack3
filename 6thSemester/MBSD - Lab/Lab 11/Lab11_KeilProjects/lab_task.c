#include<reg51.h>
//RS = 1 we are passing data

sbit RS = P3^0;
sbit Enable = P3^1;

sbit READ = P3^3;
sbit WRITE = P3^4;
sbit INTR_FLAG = P3^2;

void init();
void delay(unsigned int);
void wr_cmd(unsigned char);
void wr_data(unsigned char);
void display_temp();
int ADC();
int reading;
int temp;

int hund, ten, unit;

char *reg_no = "21PWCSE2059";

void main(void){
		P0 = 0x00;
		P2 = 0x00;
		init();	
	
		while(*reg_no)
					wr_data(*reg_no++);
		
		while(1){		
			reading = ADC();
		//	reading = reading<<1;

			display_temp();
		}
}


void init(){
		wr_cmd(0x38); //2 lines and 5x7 Matrix
	  wr_cmd(0x0e); //Display on and cursor blinking
    wr_cmd(0x01); //Clear Display Screen
    wr_cmd(0x06); //Increment Cursor
    wr_cmd(0x0c); //Display on, Cursor off
    wr_cmd(0x80); //Force cursor to begining of 1st line 

}

void wr_cmd(unsigned char cmd){
		P2 = cmd;
		RS = 0;
		Enable = 1;
		delay(10000);
		Enable = 0;
}

void wr_data(unsigned char dt){
		P2 = dt;
		RS = 1;
		Enable = 1;
		delay(10000);
		Enable = 0;

}

void delay(unsigned int n){
	unsigned int i;
	for(i = 0; i<n; i++);
}

int ADC(){
	READ = 1;
	WRITE = 0;
	delay(10);
	WRITE = 1;
	
	while(INTR_FLAG == 1);
	
	READ = 0;
	temp = P1;
	delay(10);
	return temp;
	
}

void display_temp(){
	wr_cmd(0xC0);//Move to 2nd line
	
	hund = reading/100;
	reading = reading%100;
	
	if(hund != 0){
		wr_data(hund + '0');
	}
	
	ten = reading/10;
	reading = reading%10;
	
	wr_data(ten + '0');
	
	unit = reading;
	wr_data(unit + '0');

}
