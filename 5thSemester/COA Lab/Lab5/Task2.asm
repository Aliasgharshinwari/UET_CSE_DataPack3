.data
	msg1 : .asciiz "Enter a number \n"
	msg2 : .asciiz "Last two prime numbers from given number are \n"
	newline : .asciiz "\n"
	
.text
.globl main
main:
	
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#input
	li $v0,5
	syscall
	move $t0, $v0
	
	li $t6, 0  #no. of prime numbers found
	
	div $t5, $t0 , 2	#get the half of input
	
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
lowest_two:

	beq $t6, 2, program_end
	
	addi $t0, -1 #decrement t0 by 1
	bne $t0, $t5, prime_test
	beq $t0, $t5, program_end
	
prime_test:

	beq $t0, 2, is_prime
	blt $t0, 2, isnt_prime
	li $t1, 2 #loop Variable
	div $t2, $t0 , 2	#get the half of input

check_prime:
	
	#output
	#li $v0,1
	#move $a0, $t1
	#syscall
	
	div $t0, $t1
	mfhi $t4  #save remainder temporarily in t4
	
	beq $t4, $zero, isnt_prime
	
	beq $t1, $t2, is_prime
	addi $t1, 1
	j check_prime
	

is_prime:
	#output
	li $v0,1
	move $a0, $t0
	syscall
	
	#output
	li $v0,4
	la $a0, newline
	syscall
	
	addi $t6, 1
	j lowest_two
	
isnt_prime:
	
	j lowest_two
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall