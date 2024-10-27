#include<reg51.h>
//RS = 1 we are passing data

sbit RS = P3^0;
sbit Enable = P3^1;
sbit R1 = P1^0;
sbit R2 = P1^1;
sbit R3 = P1^2;
sbit R4 = P1^3;

sbit C1 = P1^4;
sbit C2 = P1^5;
sbit C3 = P1^6;

void init();
void delay(unsigned int);
void wr_cmd(unsigned char);
void wr_data(unsigned char);
void show(unsigned char);
unsigned char key_scanning();
int get_num(char);
void disp_num(int);

unsigned char num_char;
int num;

void main(void){
		P2 = 0x00;
		init();	
	
		while(1){
			num_char = key_scanning();
			num = get_num(num_char);
			disp_num(num);

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
		delay(15000);
		Enable = 0;
}

void wr_data(unsigned char dt){
		P2 = dt;
		RS = 1;
		Enable = 1;
		delay(15000);
		Enable = 0;
}

void delay(unsigned n){
	unsigned int i;
	
	for(i = 0; i<n; i++);
}

unsigned char key_scanning(){

	while(1){
		R1 = 0;
		R2 = R3 = R4 = 1;
		if(C1 == 0 && C2 == 1 && C3 == 1){//1 Pressed
			delay(10000);	
			return '1';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1){//2 Pressed
			delay(10000);
			return '2';
		}
			
		if(C1 == 1 && C2 == 1 && C3 == 0){//3 Pressed
			delay(10000);
			return '3';
		}

			
		R2 = 0;
		R1 = R3 = R4 = 1;
		if(C1 == 0 && C2 == 1 && C3 == 1){//4 Pressed
			delay(10000);
			return '4';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1){//5 Pressed
			delay(10000);
			return '5';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 0){//6 Pressed
			delay(10000);
			return '6';
		}
		
				
		R3 = 0;
		R1 = R2 = R4 = 1;
		
		if(C1 == 0 && C2 == 1 && C3 == 1){//7 Pressed
			delay(10000);
			return '7';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1){//8 Pressed
			delay(10000);
			return '8';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 0){//9 Pressed
			delay(10000);
			return '9';
		}
		
		R4 = 0;
		R1 = R2 = R3 = 1;	
		if(C1 == 0 && C2 == 1 && C3 == 1){//* Pressed
			delay(10000);
			return '*';
		}
		if(C1 == 1 && C2 == 0 && C3 == 1){//0 Pressed
			delay(10000);
			return '0';
		}
		if(C1 == 1 && C2 == 1 && C3 == 0){//# Pressed
			delay(10000);
			return '#';
		}
	}
}

int get_num(char num){
	return num - '0';
}

void disp_num(int num){
	wr_data(num + '0');
}