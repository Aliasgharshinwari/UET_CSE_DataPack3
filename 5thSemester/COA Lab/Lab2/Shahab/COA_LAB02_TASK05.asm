.data
prompt_limit: .asciiz "Enter a number: "
result_message: .asciiz "The sum of numbers from 1 to "
newline: .asciiz "\n"

.text
.globl main

main:
    li $v0, 4
    la $a0, prompt_limit
    syscall

    li $v0, 5
    syscall
    move $t0, $v0 


    li $t1, 0

   
    li $t2, 1       

compute_sum_loop:
    beq $t2, $t0, done  
    
    add $t1, $t1, $t2
    addi $t2, $t2, 1
    j compute_sum_loop

done:
    
    li $v0, 4
    la $a0, result_message
    syscall
  
    li $v0, 1
    move $a0, $t0
    syscall
   
    li $v0, 4
    la $a0, newline
    syscall
    
    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall