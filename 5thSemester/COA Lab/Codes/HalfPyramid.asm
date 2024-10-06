.data
	msg1 : .asciiz "Enter number of rows \n"
	star : .asciiz "*"
	space : .asciiz "-"
	newline : .asciiz "\n"
	
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
	
	li $t1, 0 #i
	li $t2, 0 #j
	li $t3, 0 #k
	
main_loop:
	
	beq $t1, $t0, program_end
	
	sub $t4, $t0, $t1 #j limit
	add $t5, $t0, 1 #k limit
	
	addi $t1, 1

	li $v0,4
	la $a0, newline
	syscall
	
loop_space:

	beq $t2, $t4, loop_star
	addi $t2, 1
	
	li $v0,4
	la $a0, space
	syscall

	bne $t2, $t0, loop_space
	
loop_star:
	beq $t3, $t5, main_loop
	addi $t3, 1

	li $v0,4
	la $a0, star
	syscall

	bne $t3, $t5, loop_star
	
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	