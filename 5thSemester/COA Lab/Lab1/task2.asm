.data
	msg1 : .asciiz "Enter Value 1: \n"
	msg2 : .asciiz "Enter Value 2: \n"
	msg3 : .asciiz "Difference is: \n"	
.text
.globl main
main:
	
	#output msg1
	li $v0,4  		#load 4 into v0
	la $a0, msg1 	#load address of msg1 to a0
	syscall	
	
	#input value from user and save it in register t1
	li $v0,5 		#load 5 into v0
	syscall
	move $t1, $v0   #move the entered value from v0 to t1 register
	
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	#input value from user and save it in register t2
	li $v0,5
	syscall
	move $t2, $v0
	
	#performing subtraction and saving result in t0
	sub $t0, $t1, $t2
	
	#output msg3
	li $v0,4
	la $a0, msg3
	syscall
	#displaying integer result
	li $v0,1
	move $a0, $t0
	syscall
	#exit the process
	li $v0, 10
	syscall