//2-3_2
// Adil Ahmad

#include <stdio.h>

void main(){ 
static int h = 25; 
static int A[100]; 
A[8] = 200; 
A[12] = h + A[8]; 
}
