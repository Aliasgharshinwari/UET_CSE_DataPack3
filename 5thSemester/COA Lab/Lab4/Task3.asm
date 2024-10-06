.data
	iword : .word 4
.text
.globl main
main:
	la $t1, addition
	li $t2, 8	
	jr $t1 #jump to addition
	
addition:
	add $t3, $t2, $t2
	#output
	li $v0,1
	move $a0, $t3
	syscall

program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	