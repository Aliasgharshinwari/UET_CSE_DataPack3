.data
    msg1: .asciiz "Enter Value 1: \n"  
    msg2: .asciiz "Enter Value 2: \n"    
    msg3: .asciiz "Bitwise AND is: "      
    msg4: .asciiz "\nBitwise OR is: "     
    msg5: .asciiz "\nBitwise NOT of Value 1 is: "  

.text
.globl main

main:
    # Output msg1
    li $v0, 4
    la $a0, msg1
    syscall

    # Input: Read the first value from the user
    li $v0, 5
    syscall
    move $t1, $v0  # Move the entered value to register $t1

    # Output msg2
    li $v0, 4
    la $a0, msg2
    syscall

    # Input: Read the second value from the user
    li $v0, 5
    syscall
    move $t2, $v0  # Move the entered value to register $t2

    # Performing Bitwise Logical Operations
    and $t3, $t1, $t2  # Bitwise AND operation, result in $t3
    or $t4, $t1, $t2   # Bitwise OR operation, result in $t4
    ori $t4, $t1, 100   # Bitwise OR operation, result in $t4
    #nor $t5, $t1, $zero
	not $t5, $t1       # Bitwise NOT operation on Value 1, result in $t5

    #Output msg3
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    # Output msg4
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    # Output msg5
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $t5
    syscall

    # Exit the program
    li $v0, 10
    syscall
