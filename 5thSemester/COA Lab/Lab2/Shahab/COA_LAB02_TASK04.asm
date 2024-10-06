.data
prompt_age: .asciiz "Enter your age: "
message_can_apply: .asciiz "You can apply for CNIC."
message_cannot_apply: .asciiz "You cannot apply for CNIC."

.text
.globl main

main:
    
    li $v0, 4
    la $a0, prompt_age
    syscall

    
    li $v0, 5
    syscall
    move $t0, $v0  

   
    li $t1, 18
    bgt $t0, $t1, can_apply

   
    li $v0, 4
    la $a0, message_cannot_apply
    syscall
    j end

can_apply:
    
    li $v0, 4
    la $a0, message_can_apply
    syscall

end:
   
    li $v0, 10
    syscall