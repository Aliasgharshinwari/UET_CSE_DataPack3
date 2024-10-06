.data
	msg1 : .asciiz "Enter value 1: \n"
	msg2 : .asciiz "Enter value 2: \n"
    msg_hi: .asciiz "High bits: "
    msg_lo: .asciiz "\nLow bits: "
		
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
	li $v0,5
	syscall
	move $t2, $v0
	
	#multiplication using mult
	mult $t1, $t2
	
	# Extract high bits
    mfhi $t1

    # Extract low bits
    mflo $t2
	
	#output msg_hi
	li $v0,4
	la $a0, msg_hi
	syscall
		
	#displaying high bits result stored in t1
	li $v0,1
	move $a0, $t1
	syscall
	
	#output msg_lo
	li $v0,4
	la $a0, msg_lo
	syscall
	
	#displaying low bits result stored in t2
	li $v0,1
	move $a0, $t2
	syscall
	
	#exit
	li $v0, 10
	syscall