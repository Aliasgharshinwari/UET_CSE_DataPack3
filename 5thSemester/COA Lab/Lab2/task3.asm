.data
	input_msg1 : .asciiz "Enter number 1 \n"
	input_msg2 : .asciiz "Enter number 2 \n"
	msg1 : .asciiz "Numbers are equal\n"
	msg2 : .asciiz "Numbers are not equal\n"	
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
	move $t1, $v0   #move the entered value from v0 to t1 reg

	#output msg2
	li $v0,4  		#load 4 into v0
	la $a0, input_msg2 	#load address of msg1 to a0
	syscall	
	
	#input value from user and save it in register t2
	li $v0,5 		#load 5 into v0
	syscall
	move $t2, $v0   #move the entered value from v0 to t2 reg

	beq $t1, $t2, equal
	
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	#exit the process
	li $v0, 10
	syscall

	
equal:
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#exit the process
	li $v0, 10
	syscall