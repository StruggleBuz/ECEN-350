# Kyle Loyka
# ECEN 350 - 508
# Lab 1 a

.text
.globl main
main:
addi $t1, $0, 10  # storing 10 in t1
addi $t2, $0, 11  # storing 11 in t2

add $t1, $t1, $t1 # multiplied $t1 by four
add $t1, $t1, $t1

add $t2, $t2, $t2 # multiplied $t2 by two

add $t3, $t1, $t2
jr $ra
