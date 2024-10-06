.data
	input_msg1 : .asciiz "Enter the limit \n"

	msg1 : .asciiz "Fibonacci sequence of numbers from 1 to "	
	msg_space : .asciiz " "	
	msg2 : .asciiz " is:\n"	
.text
.globl main
main:
	
	#output msg1
	li $v0,4  		#load 4 into v0
	la $a0, input_msg1 	#load address of msg1 to a0
	syscall	
	
	#input value from user and save it in register t1
	li $v0,5 		#load 5 into v0
	syscall
	move $t1, $v0   #move the entered value from v0 to t1 register
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	