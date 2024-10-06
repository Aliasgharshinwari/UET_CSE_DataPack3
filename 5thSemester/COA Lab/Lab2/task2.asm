.data
	input_msg : .asciiz "Enter any number \n"
	msg1 : .asciiz "Equal to zero \n"
	msg2 : .asciiz "Less than Zero\n"
	msg3 : .asciiz "Greater than Zero\n"	
.text
.globl main
main:
	
	#output input_msg
	li $v0,4  		
	la $a0, input_msg 	
	syscall	
	
	#input value from user and save it in register t1
	li $v0,5 		#load 5 into v0
	syscall
	
	move $t1, $v0   #move the entered value from v0 to t1 register

	beq $t1, $zero, eq_to_zero
	blt $t1, $zero, ls_th_zero
	bgt $t1, $zero, gr_th_zero
	
eq_to_zero:
	#output msg1
	li $v0,4
	la $a0, msg1
	syscall
	#j main
	
	#exit the process
	li $v0, 10
	syscall
		
ls_th_zero:
	#output msg2
	li $v0,4
	la $a0, msg2
	syscall
	
	#j main
	#exit the process
	li $v0, 10
	syscall
		
gr_th_zero:
	#output msg3
	li $v0,4
	la $a0, msg3
	syscall
	
	#j main
	#exit the process
	li $v0, 10
	syscall
	
		