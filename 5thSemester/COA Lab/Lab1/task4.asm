.data
	msg1 : .asciiz "Enter Value of Numerator: \n"
	msg2 : .asciiz "Enter Value of Denominator: \n"
	msg3 : .asciiz "Qoutient is: "
	msg4 : .asciiz "\nRemainder is: "

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
	
	#performing division 
	div $t1, $t2
	
	#output msg3
	li $v0,4
	la $a0, msg3
	syscall
	
	#move the qoutient from lo register to t3
	mflo $t3
	
	#move the remainder from hi register to t4
	mfhi $t4
	
	#displaying Qoutient result stored in t3
	li $v0,1
	move $a0, $t3
	syscall
	
	#output msg4
	li $v0,4
	la $a0, msg4
	syscall
	
	#displaying Remainder result stored in t4
	li $v0,1
	move $a0, $t4
	syscall
	
	#exit the process
	li $v0, 10
	syscall