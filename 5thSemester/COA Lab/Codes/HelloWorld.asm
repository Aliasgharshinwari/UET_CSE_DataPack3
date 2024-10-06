.data
	out_string: .asciiz "Hello"

.text
.globl main
	
main:
	li $t1, 1
	li $t2, 1
	add $t3, $t1, $t2
	
	li $v0, 4
	la $a0, out_string
	syscall
	
	li $v0,10
	syscall
