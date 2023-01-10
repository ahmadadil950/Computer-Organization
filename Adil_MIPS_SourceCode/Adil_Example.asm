#Adil Ahmad
#example

.data
a: .word -1
x: .word 0
.text
li $t1, 1
lw $s2, a
lw $s0, x
addi $s2, $s2, 1
add $s0, $t1, $s2
sw $s0, x