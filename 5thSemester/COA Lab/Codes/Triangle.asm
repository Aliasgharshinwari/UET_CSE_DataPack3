    .data
prompt:     .asciiz "Enter the number of rows: "
star:       .asciiz "* "
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
    move $t1, $v0           # store user input in $t0

	li $t2, 0 
	li $t3, 0	

main_loop:

	beq $t2, $t1, end_program
	
in_loop:
	bgt $t3, $t2, end_inner
	
	addi $t3, $t3, 1
	
	li $v0, 4               # syscall code for print_str
    la $a0, star          # load address of prompt string
    syscall
	
	j in_loop
	
end_inner:

	
	li $v0, 4               # syscall code for print_str
	la $a0, newline          # load address of prompt string
	syscall
	
	addi $t2, $t2, 1	
	j main_loop

end_program:
    li $v0, 10              # syscall code for exit
    syscall
