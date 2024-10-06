.data
	msg1 : .asciiz "Enter the number: \n"
	msg2 : .asciiz "Number is Even: \n"
	msg3 : .asciiz "Number is Odd: \n"

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

	andi $t3, $t1, 1 #Binary 0001 to extract first bit
	
	beq $t3, 0, EvenNumber
	beq $t3, 1, OddNumber
	
	j end_program

EvenNumber:
	#output msg2
	li $v0,4  		#load 4 into v0
	la $a0, msg2 	#load address of msg2 to a0
	syscall	
	
	j end_program
OddNumber:

	#output msg3
	li $v0,4  		#load 4 into v0
	la $a0, msg3 	#load address of msg3 to a0
	syscall	
	j end_program
end_program:

	#exit the process
	li $v0, 10
	syscall