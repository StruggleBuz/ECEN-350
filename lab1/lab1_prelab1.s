# Kyle Loyka
# ECEN 350 - 508
# Lab 1 (Pre-Lab)

.text
.globl main
main:
addi $a0, $0, 2  # storing 2 in a0
addi $a1, $0, 3  # storing 3 in a1
add $a2, $a0, 0  # storing a0 in a2
add $a0, $a1, 0  # putting a1 into a0
add $a1, $a2, 0  # putting a2 into a1

jr $ra
