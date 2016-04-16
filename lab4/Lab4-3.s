

.data
        msg1: .asciiz "Enter the number to compute factorial\n"
        msg:  .asciiz "The answer is "
        .text
        .globl main
        .globl my_mul
        .globl result
        .globl fact
        main:

	## ASKING FOR USER INPUT
	
	add $fp, $sp, $0	#set fp to top of stack prior to function call
	addi $sp, $sp, -16	#pushing stack 
	sw $a0, 0($sp)		# we will use a0, so storing previous value of a0
	sw $a1, 4($sp)		# same for a1
	sw $s0, 16($sp)		# same for s0
	
        la $a0, msg1        #load address of msg1 into $a0
        li $v0, 4
        syscall             #print msg1
        li $v0, 5
        syscall             #read_int
        add, $a0, $v0, $0   #put in $a0

        
        add $v0, $zero, $zero
        addi $a1, $a0, -1
###########################################################        
        
        ## OUTPUTING RESULT
        jal my_mul         #do mul, result is in $v0
        result:
        add $t0, $v0, $0    #save the result in $t0
        la $a0, msg
        li $v0, 4
        syscall             #print msg
        add $a0, $t0, $0    #put computation result in $a0
        li $v0, 1
        syscall             #print result number
	
 
 	addi $sp, $sp, 16	# poping stack
	lw $a0, 0($sp)		# restoring a0 to previous value before function call
	lw $a1, 4($sp)		# restoring a1
	lw $s0, 16($sp)		# restoring s0
 
	addi $v0,$0,10
	syscall 
 ##########################################################
	fact:
	
	addi $a1, $a1, -1		# the mult function will handle all multiplication, we just need to give it correct operands.
	addi $a0, $v0, 0		# a0 is going to always be the "bigger" number. a1 will decriment and be multplied to a0
	bne $a1, $zero, my_mul		# as long as a1 is not zero, multiple a1 and a0. 
	jr $ra				# if a1 is zero, then the program will output the answer and exit.
          
        my_mul:                 #multiply $a0 with $a1
        #does not handle negative $a1!
        #Note: This is an inefficient way to multipy!
        addi $sp, $sp, -4   #make room for $s0 on the stack
        sw $s0, 0($sp)      #push $s0

        add $s0, $a1, $0   #set $s0 equal to $a1
        add $v0, $0, $0    #set $v0 to 0
        mult_loop:
        beq $s0, $0, mult_eol

        add $v0, $v0, $a0
        addi $s0, $s0, -1
        j mult_loop

        mult_eol:
        lw $s0, 0($sp)      #pop $s0
        addi $sp,$sp,4
        bne $a1, $zero, fact	#if a1 is not zero, go to fact
        jr $ra
