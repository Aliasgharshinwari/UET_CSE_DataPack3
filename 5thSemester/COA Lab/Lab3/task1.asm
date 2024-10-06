.data
	msg1 : .asciiz "Enter the number 1: \n"
	msg2 : .asciiz "Enter 1 for addition, 2 for subtraction, 3 for multiplication and 4 for division \n"	
	msg3 : .asciiz "Enter the number 2: \n"
	msg4 : .asciiz "Result: \n"	
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
	li $v0,5 		#load 5 into v0
	syscall
	move $t2, $v0   #move the entered value from v0 to t2 register

		
	#output msg3
	li $v0,4
	la $a0, msg3
	syscall

	#input value from user and save it in register t3
	li $v0,5 		#load 5 into v0
	syscall
	move $t3, $v0   #move the entered value from v0 to t3 register
	
	beq $t2,1,addition
	beq $t2,2,subtraction
	beq $t2,3,multiplication
	beq $t2,4,division
	
	j end_program

addition:
	add $t4, $t1,$t3
	
	#output msg4
	li $v0,4
	la $a0, msg4
	syscall
	
	li $v0,1
	move $a0, $t4
	syscall
	j end_program
	
subtraction:
	sub $t4, $t1,$t3
	
	#output msg4
	li $v0,4
	la $a0, msg4
	syscall
	
	li $v0,1
	move $a0, $t4
	syscall
	
	j end_program

multiplication:
	mul $t4, $t1,$t3
	
	#output msg4
	li $v0,4
	la $a0, msg4
	syscall
	
	li $v0,1
	move $a0, $t4
	syscall
	j end_program
	
division:
	div $t4, $t1,$t3
	
	#output msg4
	li $v0,4
	la $a0, msg4
	syscall
	
	li $v0,1
	move $a0, $t4
	syscall
	j end_program

end_program:

	#exit the process
	li $v0, 10
	syscall