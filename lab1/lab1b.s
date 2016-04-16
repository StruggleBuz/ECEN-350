# Kyle Loyka
# ECEN 350 - 508
# Lab 1 b

.text
.globl main
main:

addi $t0, $0, 100000  # storing 100000 in t0

srl $t1, $t0, 6 # 100000/ (2^6)
sll $t2, $t0, 6 # 100000 * (2^6)

jr $ra
