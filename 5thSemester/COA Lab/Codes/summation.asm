.data
    msg1: .asciiz "Enter Value 1: \n"  

.text
.globl main

main:
	li $t0, 0
	li $t1, 0
	li $t2, 5

loop1:
	bge $t0, $t2, print  
	addi $t0, 1
	
	add $t1, $t1, $t0
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	j loop1

print:
		li $v0, 1
		move $a0, $t1
		syscall
		
end_Program:

    # Exit the program
    li $v0, 10
    syscall
