.data
    User_input: .asciiz "Enter a number: "
    neg_MSG: .asciiz "The number is (-ve)."
    zero_MSG: .asciiz "The number is zero (0)."
    pos_MSG: .asciiz "The number is positive (+ve)."

.text
    main:
        # Display the User input
        li $v0, 4
        la $a0, User_input
        syscall

        # Read an integer from the user
        li $v0, 5
        syscall
        move $t0, $v0

        # Check if the number is negative
        bgtz $t0, check_positive
        blez $t0, check_zero
        j end

    check_positive:
        # Display positive message
        li $v0, 4
        la $a0, pos_MSG
        syscall
        j end

    check_zero:
        # Display zero message
        li $v0, 4
        la $a0, zero_MSG
        syscall
        j end
    end:
		
		li $v0,10
		syscall