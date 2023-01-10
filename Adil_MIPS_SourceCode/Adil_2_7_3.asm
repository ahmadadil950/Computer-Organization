#2_7_3
.data

.text
li $s1, 2
li $t2, 3
sltu $t0,$s1,$t2
beq  $t0,$zero,IndexOutOfBounds

IndexOutOfBounds:
