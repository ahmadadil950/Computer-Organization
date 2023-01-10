#2_8
#Adil Ahmad
.data
f: .word 0
g: .word 50
h: .word 40
i: .word 30
j: .word 20
.text
main:
lw $s0, f
lw $a0, g
lw $a1, h
lw $a2, i
lw $a3, j
jal myadd
sw $v0, f
j Exit

myadd:
addi $sp, $sp, -12
sw $t1, 8($sp)
sw $t0, 4($sp)
sw $s0, 0($sp)
add $t0, $a0, $a1
add $t1, $a2, $a3
sub $s0, $t0, $t1    
add $v0, $s0, $zero
lw $s0, 0($sp)
lw $t0, 4($sp)
lw $t1, 8($sp)
addi $sp, $sp, 12
jr $ra
Exit:
