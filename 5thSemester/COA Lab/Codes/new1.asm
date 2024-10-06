.data
    hello_str:  .asciiz "Hello, World!\n"

.text
.globl main

main:
    # Print the "Hello, World!" string
    li $v0, 4            # Load the print string syscall code into $v0
    la $a0, hello_str    # Load the address of the hello_str into $a0
    syscall

    # Exit the program
    li $v0, 10           # Load the exit syscall code into $v0
    syscall
