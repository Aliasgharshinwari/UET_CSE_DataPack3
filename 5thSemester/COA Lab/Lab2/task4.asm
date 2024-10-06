.data
	input_msg1 : .asciiz "Enter your age \n"

	msg1 : .asciiz "You can apply for CNIC\n"	
	msg2 : .asciiz "You cannot apply for CNIC\n"	
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

	li $t2,18
	
	bgt $t1, $t2, success
	
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	#exit the process
	li $v0, 10
	syscall

	
success:
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#exit the process
	li $v0, 10
	syscall
	