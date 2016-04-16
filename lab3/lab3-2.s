.data
.globl main

UIN: .word 32		#make word with value 32

.text

main:
		#load value of UIN
addi $t0, $zero, 0	#initalize t0 = 0
addi $t2, $zero, 10
loop:
lw $t1, UIN
subi $t1, $t1, 1	#t1=t1-1
sw $t1, UIN		#UIN = $t1
addi $t0, $t0, 1	#incriment counter
bne $t0, $t2, loop	#is t0 equal to 10?

li $v0, 10
syscall
