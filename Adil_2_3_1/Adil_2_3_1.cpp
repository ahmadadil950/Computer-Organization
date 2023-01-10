// Adil_2_3_1.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Adil Ahmad

#include <iostream>

void main() 
{
	static int g = 0;
	static int h = 22;
	static int A[100];
	A[8] = 55; g = h + A[8];
}

