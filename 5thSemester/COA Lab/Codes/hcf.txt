.data
	msg1 : .asciiz "Enter number \n"

.text
.globl main
main:
	
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#input value from user
	li $v0,5
	syscall
	move $t0, $v0
	
	li $t1, 10
	
loop1:
	
	div $t0, $t1
	mfhi $t2
	mflo $t0
	
	li $v0,1
	move $a0, $t2
	syscall
	
	beq $t0, $zero, program_end
		
	j loop1
	

program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	