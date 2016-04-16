        .data
        alphabet:	.ascii "abcdefghijklmnopqrstuvwxyz"
        msg1:		.asciiz "Input an integer "
        msg2:		.asciiz "First ___ letters of the alphabet  "
        .text
        .globl main
        main:
        li $v0, 4		#syscall for print_str
        la $a0, msg1
        syscall
        li $v0, 5		#syscall for read_int
        syscall
        subi $t0, $v0, 0	#storing user input
        li $v0, 4		#syscall for print_str
        la $a0, msg2
        syscall
        la $a1, alphabet
	count:
        add $a2, $a1, $s1	#get address in hextable
        lb $a0, 0($a2)		#get character
        li $v0, 11		#syscall for print_char
        addi $s1, $s1, 1
        syscall
        bne $t0, $s1, count
     
	li   $v0, 10            # system call for exit
	syscall                 # we are out of here.
