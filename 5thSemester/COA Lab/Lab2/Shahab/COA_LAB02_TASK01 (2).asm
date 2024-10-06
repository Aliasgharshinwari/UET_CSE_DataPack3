.data
    User_input: .asciiz "Enter a num: "
    Ans: .asciiz "The Low singnificant digit is: "
.text
    main:      
        li $v0, 4
        la $a0, User_input
        syscall
        
        li $v0, 5
        syscall
       
        move $t0, $v0
        
        li $t1, 10        
        div $t0, $t1      
        mfhi $t0          
        
        li $v0, 4
        la $a0, Ans
        syscall

        li $v0, 1
        move $a0, $t0
        syscall
    
        li $v0, 10
        syscall