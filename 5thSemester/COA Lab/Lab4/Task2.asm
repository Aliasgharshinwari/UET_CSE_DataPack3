.data
	iword : .word 4
.text
.globl main
main:

	lw $t1, iword
	sll $t1, $t1, 1
	sw $t1, iword
	
	#output
	li $v0,1
	lw $a0, iword
	#move $a0, $t2
	syscall
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	