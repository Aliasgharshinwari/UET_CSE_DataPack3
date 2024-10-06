.data
	msg1 : .asciiz "Enter number \n"
	msg2 : .asciiz "HCF is: "
	msg3 : .asciiz "LCM is: " #(n1*n2/HCF)

.text
.globl main
main:
	
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	
	#input value1 from user
	li $v0,5
	syscall
	move $t0, $v0

	#input value2 from user
	li $v0,5
	syscall
	move $t1, $v0
	
	mul $t2, $t1, $t0
	
	
loop1:
	bgt $t0, $t1, t0_greater
	bgt $t1, $t0, t1_greater
	beq $t1, $t0, success
	
	
t0_greater:
	sub $t0, $t0, $t1 
	j loop1
	
t1_greater:
	sub $t1, $t1, $t0 
	j loop1
	
success:

	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	li $v0,1
	move $a0, $t0
	syscall
	
	#lcm Calc
	div $t2, $t0
	mflo $t3
	
	#output msg3
	li $v0,4
	la $a0, msg3
	syscall
	
	li $v0,1
	move $a0, $t3
	syscall
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	