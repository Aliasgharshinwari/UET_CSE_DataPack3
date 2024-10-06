.data
	input_msg1 : .asciiz "Enter the limit \n"

	msg1 : .asciiz "Sum of numbers from 1 to "	
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
	
	li $t2,1
	li $t3,0	
	j success

success:
	add $t3, $t3, $t2 
	bge $t2, $t1, success2
	addi $t2, 1
	j success
	
success2:	
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#output
	li $v0,1
	move $a0, $t1
	syscall
	
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	#output
	li $v0,1
	move $a0, $t3
	syscall
	
	#exit the process
	li $v0, 10
	syscall
	