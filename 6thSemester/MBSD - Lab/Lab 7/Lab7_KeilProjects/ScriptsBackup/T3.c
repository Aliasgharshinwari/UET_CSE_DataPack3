#include<reg51.h>
#include<stdio.h>

sbit i_btn = P3^2;
sbit val = P1^0;
sbit md = P1^1;

void e_i_0 () interrupt 0
{		md = ~md;	}
void set_time(){	
	if(md)
	{
			if(val)
			{
				TH0 = 0xF0;
				TL0 = 0x5F;
			}
			else
			{
				TH0 = 0xE8;
				TL0 = 0x8F;
			}	
		}
	else
	{
			if(val)
			{
				TH0 = 0xF8;
				TL0 = 0x7F;
			}
			else
			{
				TH0 = 0xFA;
				TL0 = 0xD7;
			}	
		}
}

void timer0() interrupt 1
{
		set_time();
}

void main(void)
{
	md = 1;
	
	TR0 = 1;
	TMOD = 0x01;
	set_time();
	IE = 0x83;
	IT0 = 1;
	EX0 = 1;
	while(TF0 == 0);
		val = ~val;
}