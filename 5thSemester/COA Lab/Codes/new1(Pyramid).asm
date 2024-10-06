    .data
prompt:     .asciiz "Enter the number of rows: "
star:       .asciiz "*"
space:      .asciiz " "
newline:    .asciiz "\n"

    .text
    .globl main

main:
    # Prompt user for input
    li $v0, 4               # syscall code for print_str
    la $a0, prompt          # load address of prompt string
    syscall

    # Read user input
    li $v0, 5               # syscall code for read_int
    syscall
    move $t0, $v0           # store user input in $t0

	li $t1, 0 
	li $t2, 0

main_loop:
	beq $t1, $t0, end_program
	addi $t1, 1
	
	li $v0, 4               # syscall code for print_str
    la $a0, newline          # load address of prompt string
    syscall
	
in_loop:
	bgt $t2, $t1, main_loop
	
	addi $t2, 1

	li $v0, 4               # syscall code for print_str
    la $a0, star          # load address of prompt string
    syscall
	
	j in_loop

end_program:
    li $v0, 10              # syscall code for exit
    syscall
