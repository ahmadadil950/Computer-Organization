// Adil_2_6_1.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Adil Ahmad

#include <iostream>

//2 - 6_1.c
void main() 
{
	static int s0 = 9;
	static int t1 = 0x3c00;
	static int t2 = 0xdc0;
	static int t3 = 0; t3 = s0 << 4;
	static int t0 = 0;
	t0 = t1 & t2;  t0 = t1 | t2;
	t0 = ~t1;
}

