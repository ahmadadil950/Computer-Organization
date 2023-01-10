#else if statement
# Adil Ahmad
#2_7_1

.data 
f: .word 0
g: .word 1
h: .word 2
i: .word 3
j: .word 4

.text
lw $s0, f
lw $s1, g
lw $s2, h
lw $s3, i
lw $s4, j

bne $s3,$s4, Else

add $s0, $s1, $s2

j Exit

Else:
sub $s0, $s1, $s2
Exit:
sw $s0, f
