.data
	iword : .word 4
.text
.globl main
main:
	
	lw $t1, iword
	addi $t1, $t1, 10
	sw $t1, iword
	
	#output
	li $v0,1
	lw $a0, iword
	syscall
	
program_end:	
	
	#exit the process
	li $v0, 10
	syscall
	