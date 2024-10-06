.data
	msg1 : .asciiz "Enter a number \n"
	msg2 : .asciiz "It is a Prime number \n"
	msg3 : .asciiz "It is not a Prime number \n"
	
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

prime_test:

	beq $t0, 2, is_prime # if input = 2 then it is Prime
	blt $t0, 2, isnt_prime # if input < 2 then it isnt Prime
	li $t1, 2 #loop Variable
	div $t2, $t0 , 2	#get the half of input
	
check_prime:
	
	div $t0, $t1
	mfhi $t4  #save remainder temporarily in t4
	beq $t4, $zero, isnt_prime
	beq $t1, $t2, is_prime
	addi $t1, 1
	j check_prime
	

is_prime:
	#output
	li $v0,4
	la $a0, msg2
	syscall
	j program_end
	
isnt_prime:
	#output
	li $v0,4
	la $a0, msg3
	syscall
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	