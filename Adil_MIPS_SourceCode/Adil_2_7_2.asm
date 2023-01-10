#Loops
#Adil Ahmad
#2_7_2

.data
i: .word 20
k: .word 20
save: .word 0-100
size: .word 100

.text
lw $s0, i
lw $s1, k
la $s6, save
sw $s1, 32($s6)
sw $s2, 64($s6)

loop:
sll $t1, $s0, 2
add $t1, $t1, $s6
lw $t0, 0($t1)
bne $t0, $t1, Exit
addi $s0, $s0, 1
j loop
Exit:
sw $zero, k
