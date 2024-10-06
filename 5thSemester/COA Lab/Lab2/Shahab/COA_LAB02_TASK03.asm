.data
    prompt1: .asciiz "Enter the first number: "
    prompt2: .asciiz "Enter the second number: "
    equal_msg: .asciiz "The numbers are equal."
    not_equal_msg: .asciiz "The numbers are not equal."

.text
    main:
        
        li $v0, 4
        la $a0, prompt1
        syscall

        
        li $v0, 5
        syscall
        move $t0, $v0

        
        li $v0, 4
        la $a0, prompt2
        syscall

        
        li $v0, 5
        syscall
        move $t1, $v0

        
        beq $t0, $t1, equal

        
        li $v0, 4
        la $a0, not_equal_msg
        syscall
        j end

    equal:
        
        li $v0, 4
        la $a0, equal_msg
        syscall

    end:
        
        li $v0, 10
        syscall