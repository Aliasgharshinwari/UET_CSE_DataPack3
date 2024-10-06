.data
	#iword : .word 4
	msg : .asciiz "Enter number of terms \n"
	empty_space : .asciiz " "
.text
.globl main
main:
	
	#output
	li $v0,4
	la $a0, msg
	#move $a0, $t2
	syscall
	
	#output
	li $v0,5
	syscall
	move $t0, $v0
	
	li $t1, 0
	li $t2, 1
	li $t4, 2
	
	j first_term

first_term:

	#output
	li $v0,1
	move $a0, $t1
	syscall
	
	
	#output
	li $v0,4
	la $a0, empty_space
	syscall
	
	
	beq $t0, 1, program_end
	bgt $t0, 2 second_term
	
	
second_term:

	#output
	li $v0,1
	move $a0, $t2
	syscall
	
	#output
	li $v0,4
	la $a0, empty_space
	syscall
	
	beq $t0, 2, program_end
	bgt $t0, 2 loop1
	
	
loop1:
	#t4 is iterating variable
	addi $t4, 1
	
	add $t3, $t1, $t2
	
	#output
	li $v0,1
	move $a0, $t3
	syscall
	
	move $t1, $t2	
	move $t2, $t3
	
	#output
	li $v0,4
	la $a0, empty_space
	syscall
	
	beq $t0, $t4, program_end
	j loop1
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall