.data
	msg1 : .asciiz "Enter the number: \n"
	msg2 : .asciiz "Last Digit is: \n"	
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

	#save 10 in t2 to divide t1 value by it
	li $t2, 10
	
	#performing division
	div $t1, $t2
	
	#move value stored in HI reg to t3
	mfhi $t3
		
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
		
	#output last digit
	li $v0,1
	move $a0, $t3
	syscall
	
	#exit the process
	li $v0, 10
	syscall