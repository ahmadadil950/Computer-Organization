# Adil Ahmad
#2_3_2
.data
h: .word 25 
g: .word 0
A: .word 0-100
size: .word 100 

.text
lw $s2, h 
lw $s1, g 
li $t1, 200
la $s3, A 
sw $t1, 32($s3)
lw $t0, 32($s3) 
add $s1, $s2, $t0
sw $s1, g
