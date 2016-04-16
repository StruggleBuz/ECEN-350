.data
.globl main


my_array: .space 40
.text

main:

addi $t0, $zero, 0	#initalize t0 = 0
addi $t2, $zero, 10	#t2 = 10
addi $t1, $zero, 6	#value of my UIN
la $t3, my_array	#load address of the first slot in my_array



loop:
sw $t1, ($t3)
addi $t0, $t0, 1	#incriment counter
addi $t3, $t3, 4	#get incriment pointer address (need to increment by 4 since we're working in terms of words

addi $t1, $t1, 1	#initial_value = initial_value + 1


bne $t0, $t2, loop	#is t0 (the counter) not equal to 10?

li $v0, 10
syscall