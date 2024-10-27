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
sbit C4 = P1^7;

void init();
void delay(unsigned int);
void wr_cmd(unsigned char);
void wr_data(unsigned char);
unsigned char key_scanning();

char int_to_char(int);
int char_to_int(char);

void arr_to_num();
void num_to_arr();

void disp_msg(char*);
void get_result();
void display_result();
void get_expr();

unsigned char key;

int num1_buff_int[7];
int num2_buff_int[7];
int num1, num2;

char buff[16];
int buff_len = 0;

int res_buff_int[7];
char res_buff_char[7];

int arr[3];
int res_num;
char operation;
int op_loc;

int i;
int n = 40;

void main(void){
		P2 = 0x00;
		P0 = 0x00;
		init();	

		while(1){
			buff_len = 0;
			for(i = 0; i<16; i++){
					key = key_scanning();	
											
					if(key == '=') break;
					if(key == 'C') break;
				
					wr_data(key); //display num1					
					buff[i] = key;
					buff_len++;
			}
			if(key == 'C') continue;
			get_expr();
			arr_to_num();
			get_result(); //Will store result in res_num
			num_to_arr();
			display_result();
			P0 = res_num;
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
		delay(20000);
		Enable = 0;
}

void wr_data(unsigned char dt){
		P2 = dt;
		RS = 1;
		Enable = 1;
		delay(20000);
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
		if(C1 == 0 && C2 == 1 && C3 == 1 && C4 == 1){//7 Pressed
			delay(10000);	
			return '7';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1 && C4 == 1){//8 Pressed
			delay(10000);
			return '8';
		}
			
		if(C1 == 1 && C2 == 1 && C3 == 0 && C4 == 1){//9 Pressed
			delay(10000);
			return '9';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 1 && C4 == 0){//% Pressed
			delay(10000);
			return '/';
		}
			
		R2 = 0;
		R1 = R3 = R4 = 1;
		if(C1 == 0 && C2 == 1 && C3 == 1 && C4 == 1){//4 Pressed
			delay(10000);
			return '4';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1 && C4 == 1){//5 Pressed
			delay(10000);
			return '5';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 0 && C4 == 1){//6 Pressed
			delay(10000);
			return '6';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 1 && C4 == 0){//x Pressed
			delay(10000);
			return 'x';
		}
				
		R3 = 0;
		R1 = R2 = R4 = 1;
		
		if(C1 == 0 && C2 == 1 && C3 == 1 && C4 == 1){//1 Pressed
			delay(10000);
			return '1';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1 && C4 == 1){//2 Pressed
			delay(10000);
			return '2';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 0 && C4 == 1){//3 Pressed
			delay(10000);
			return '3';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 1 && C4 == 0){//- Pressed
			delay(10000);
			return '-';
		}
		
		R4 = 0;
		R1 = R2 = R3 = 1;
		
		if(C1 == 0 && C2 == 1 && C3 == 1 && C4 == 1){//C/ON Pressed
			delay(10000);
			return 'C';
		}
		
		if(C1 == 1 && C2 == 0 && C3 == 1 && C4 == 1){//0 Pressed
			delay(10000);
			return '0';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 0 && C4 == 1){//= Pressed
			delay(10000);
			return '=';
		}
		
		if(C1 == 1 && C2 == 1 && C3 == 1 && C4 == 0){//+ Pressed
			delay(10000);
			return '+';
		}
	}
}

char int_to_char(int num){
		return num + '0';
}


int char_to_int(char num){
		return num - '0';
}

void disp_msg(char *str){
		while(*str)
			wr_data(*str++);
}

void get_expr(){
			for(i = 0; i<buff_len; i++){
				if(buff[i] == '+' || buff[i] == '-' || buff[i] == 'x' || buff[i] == '/' ){
					operation = buff[i];
					op_loc = i;
					break;
				}
			}
			
			for(i = 0; i<op_loc; i++){		
				num1_buff_int[i] = char_to_int(buff[i]);
			}
			
			
			for(i = op_loc + 1; i<buff_len; i++){		
				num2_buff_int[i] = char_to_int(buff[i]);
			}
}

void arr_to_num(){
	
		for(i = 0; i<op_loc; i++){		
				 num1 = num1 * 10 + num1_buff_int[i];
			}
		
		for(i = op_loc + 1; i<=buff_len; i++){			
				 num2 = num2 * 10 + num2_buff_int[i];
			}
}

void num_to_arr() {
  
		res_buff_int[0] = res_num/10;
		res_num = res_num % 10;
		res_buff_int[1] = res_num; 
}

void get_result(){
	
	switch(operation){
		case '+': res_num = num1 + num2; break;
		case '-': res_num = num1 - num2; break;
		case 'x': res_num = num1 * num2; break;
		case '/': res_num = num1 / num2; break;
		default: disp_msg("Invalid"); 
	}

}
void display_result(){
		
		wr_cmd(0xC0);//Move to 2nd line
		
		for(i = 0; i<7; i++)
			wr_data(int_to_char(res_buff_int[i]));

		//wr_cmd(0x01); //Clear Display Screen
		wr_cmd(0x80);//Move to 1st line
}
