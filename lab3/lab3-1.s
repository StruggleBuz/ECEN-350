.text
.globl main

main: li $a1, 10              #a1 = 10
add $t0, $zero, $zero         #t0 = 0
loop: beq $a1, $zero, finish    #if a1 == 0, jump to "finish"
add $t0, $t0, $a0             #t0 = t0 + a0
sub $a1, $a1, 1               #a1 = a1 - 1
j loop                          #jump back to beginning of loop
finish: addi $t0, $t0, 100    #t0 = t0 +100
add $v0, $t0, $zero           #v0 = t0
