.data
n: .word 11
.text
nop
nop

funca: 
la $t0, n
lw $s0, 0($t0)
addi $s2, $0, 1
sub $s1, $s1, $s1
loop:
sll $t0, $s2, 31
slt $t1, $t0, $zero
bne $t1, $t0, skip
add $s1, $s1, $s2
skip:
addi $s2, $s2, 1
beq $s2, $s0, done
beq $0, $0, loop
done:
addi $v0, $s1, 0
jr $ra


