.data
	msg1 : .asciiz "Enter an even number: \n"
	msg2 : .asciiz "Multiplication by 2 raised to power 2 is: \n"
	msg3 : .asciiz "\nDivision by 2 raised to power 2: \n"
	
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

	sll $t2, $t1, 2 #shift left by amount of 2
	srl $t3, $t1, 2 #shift right by amount of 2
	
	#output msg2
	li $v0,4  		#load 4 into v0
	la $a0, msg2 	#load address of msg1 to a0
	syscall	
	
	li $v0,1
	move $a0, $t2
	syscall
	
	#output msg3
	li $v0,4  		#load 4 into v0
	la $a0, msg3 	#load address of msg1 to a0
	syscall	
	
	li $v0,1
	move $a0, $t3
	syscall
	j end_program

end_program:

	#exit the process
	li $v0, 10
	syscall