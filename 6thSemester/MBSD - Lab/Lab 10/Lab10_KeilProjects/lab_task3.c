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
void show(unsigned char);
unsigned char key_scanning();
int get_num(char);

char int_to_char(int);
int char_to_int(char);

int arr_to_num(int[], int);
void num_to_arr(int, int);

void disp_msg(char*);
void get_result();
void display_result();
int power10(unsigned int);
int count_digits(int);
unsigned char key;

int num_buff1[5];
int num_buff2[5];
int num1, num2;
int digits1 = 0;
int	digits2 = 0;
char res_buff_char[3];
int arr[3];
int res_num;
char operation;

int i;

void main(void){
		P2 = 0x00;
		init();	
	
		while(1){
			disp_msg("Enter num1:");
			while(1){
					key = key_scanning();	
					
					
					if(key == '=') break;
					
					wr_data(key); //display num1					
					num_buff1[i] = char_to_int(key);
					digits1++;
				}
			
			num1 = arr_to_num(num_buff1,digits1);
			wr_cmd(0x01); //Clear Display Screen
			
				
			disp_msg("Enter num2:");	
				while(1){
					key = key_scanning();	

					if(key == '=') break;

					wr_data(key); //display num2					
					num_buff2[i] = char_to_int(key);	
					digits2++;				
				}
			
			num2 = arr_to_num(num_buff2,digits2);
			wr_cmd(0x01); //Clear Display Screen

			disp_msg("Enter Op:");
			key = key_scanning();
			if(key == 'C') continue;				
			
			operation = key;
				
			get_result(); //Will store result in res_num
			display_result();
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

int arr_to_num(int arr[], int digits){
		int num = 0;
		for(i = 0; i < digits; i++)
			num += arr[i] * power10(digits - 1 - i);
		//num = (arr[0] * 100) + (arr[1] * 10) + arr[2];
		return num;
}

void num_to_arr(int num, int digits) {

		for(i = 0; i < digits; i++) {
        arr[i] = num / power10(digits - 1 - i);
        num = num % power10(digits - 1 - i);
    }
}

void get_result(){
	
	switch(operation){
		case '+': res_num = num1 + num2; break;
		case '-': res_num = num1 - num2; break;
		case 'x': res_num = num1 * num2; break;
		case '/': res_num = num1 / num2; break;
		default: disp_msg("Invalid Operator");
	
	}
}
void display_result(){
	
	wr_cmd(0xC0);//Move to 2nd line
	num_to_arr(res_num, count_digits(res_num));

	for(i = 0; i<3; i++)
		res_buff_char[i] = int_to_char(arr[i]);
	
		disp_msg(res_buff_char);
		wr_cmd(0x80);//Move to 1st line
}

int power10(int exponent) {
    int result = 1;
		
		if(exponent == 0)
			return result;
		
    for (i = 0; i < exponent; i++) {
        result *= 10; //base 10
    }

    return result;
}

int count_digits(int num) {
    int count = 0;
    if (num == 0) return 1;
    while (num != 0) {
        num /= 10;
        count++;
    }
    return count;
}