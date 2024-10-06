.data
    msg1: .asciiz "Enter Value 1: \n"  
    msg2: .asciiz "Enter Value 2: \n"    
    msg3: .asciiz "Bitwise AND is: "      
    msg4: .asciiz "\nBitwise OR is: "     
    msg5: .asciiz "\nBitwise NOT of Value 1 is: "  

.text
.globl main

main:
	li $t1, 2
	
    ori $t4, $t1, 3  # Bitwise OR operation, result in $t4


    li $v0, 1
    move $a0, $t4
    syscall

    # Exit the program
    li $v0, 10
    syscall
