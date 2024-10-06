.data
	msg1 : .asciiz "Enter the number: \n"
	msg2 : .asciiz "4th Bit is One: \n"
	msg3 : .asciiz "4th Bit is Zero: \n"
	msg4 : .asciiz "4th Bit is now toggled: \n"
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

	andi $t3, $t1, 8
	
	beq $t3, 8, One #1000 in binary
	beq $t3, 0, Zero #0000 in binary
	
	j end_program

One:
	#output msg2
	li $v0,4  		#load 4 into v0
	la $a0, msg2 	#load address of msg1 to a0
	syscall	
	
	j one_to_zero
	
Zero:
	#output msg3
	li $v0,4  		#load 4 into v0
	la $a0, msg3 	#load address of msg1 to a0
	syscall	
	
	j zero_to_one
	
one_to_zero:
	andi $t2, 7 #binary 0111
	
	#output msg4
	li $v0,4  		#load 4 into v0
	la $a0, msg4 	#load address of msg1 to a0
	syscall 		#load 4 into v0
	
	li $v0,1
	move $a0, $t2
	syscall
	j end_program
	
	
zero_to_one:
	or $t2, 8 #binary 1000
	
	#output msg4
	li $v0,4  		#load 4 into v0
	la $a0, msg4 	#load address of msg1 to a0
	syscall 		#load 4 into v0
	
	li $v0,1
	move $a0, $t2
	syscall
	
	j end_program
	
	
end_program:
	#exit the process
	li $v0, 10
	syscall