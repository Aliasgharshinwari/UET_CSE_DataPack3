.data
rows_prompt:    .asciiz "Enter number of rows: "
star:           .asciiz "* "
newline:        .asciiz "\n"

.text
main:
    # Prompt for input
    li $v0, 4
    la $a0, rows_prompt
    syscall

    # Read input
    li $v0, 5
    syscall
    move $t0, $v0  # $t0 contains the number of rows

    # Loop for each row
    li $t1, 1  # $t1 is the outer loop counter
    loop_outer:
        # Loop for each star in the row
        li $t2, 1  # $t2 is the inner loop counter
		
        loop_inner:
            # Print "* "
            li $v0, 4
            la $a0, star
            syscall

            # Increment inner loop counter
            addi $t2, $t2, 1

            # Check if inner loop counter is greater than outer loop counter
            bgt $t2, $t1, end_inner

            # Otherwise, go to the next iteration of the inner loop
            j loop_inner

        end_inner:

        # Print a newline
        li $v0, 4
        la $a0, newline
        syscall

        # Increment outer loop counter
        addi $t1, $t1, 1

        # Check if outer loop counter is greater than the number of rows
        bgt $t1, $t0, end_outer

        # Otherwise, go to the next iteration of the outer loop
        j loop_outer

    end_outer:

    # Exit program
    li $v0, 10
    syscall
