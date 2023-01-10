.data
a: .word 2
b: .word 4
.text
main:
lw $a0,a  # load value a
lw $a1,b  #load value a
jal GCD # call funtion GCD

 add $a0,$v0,$zero 
li $v0,1
syscall # print result
li $v0, 10 # exit program 
syscall

GCD:
addi $sp, $sp, -12
sw $ra, 0($sp) # save function into stack
sw $s0, 4($sp) # save value $s0 into stack 
sw $s1, 8($sp) # save value $s1 into stack 

add $s0, $a0, $zero # s0 = a0 ( value a ) 
add $s1, $a1, $zero # s1 = a1 ( value b ) 

addi $t1, $zero, 0 # $t1 = 0
beq $s1, $t1, EXIT # if s1 == 0 EXIT

add $a0, $zero, $s1 # make a0 = $s1
div $s0, $s1 # a/b
mfhi $a1 # reminder of 2/4 which is equal to a%b
jal GCD

EXITGCD:
lw $ra, 0 ($sp)  # read registers from stack
lw $s0, 4 ($sp)
lw $s1, 8 ($sp)
addi $sp,$sp , 12 # bring back stack pointer
jr $ra
EXIT:
add $v0, $zero, $s0 # return $v0 = $s0 (2)
j EXITGCD
