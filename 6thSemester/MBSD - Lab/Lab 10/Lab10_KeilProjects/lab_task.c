#include<reg51.h>
//RS = 1 we are passing data

sbit RS = P3^0;
sbit Enable = P3^1;

void init();
void delay();
void wr_cmd(unsigned char);
void wr_data(unsigned char);

char *name = "ALI ASGHAR";
char *reg_no = "21PWCSE2059";

void main(void){
		P2 = 0x00;
		init();	

		while(1){
			while(*name)
					wr_data(*name++);
		
			wr_cmd(0xc0); //2nd line selected
	
			while(*reg_no)
					wr_data(*reg_no++);
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
		delay();
		Enable = 0;
}

void wr_data(unsigned char dt){
		P2 = dt;
		RS = 1;
		Enable = 1;
		delay();
		Enable = 0;

}

void delay(){
	unsigned int i;
	
	for(i = 0; i<15000; i++);
}

