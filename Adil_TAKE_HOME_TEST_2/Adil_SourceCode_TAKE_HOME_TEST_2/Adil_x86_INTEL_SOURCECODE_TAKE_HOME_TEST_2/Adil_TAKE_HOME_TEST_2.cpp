// Adil_TAKE_HOME_TEST_2.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Adil Ahmad

#include <stdio.h>

int gcd(int a, int b)
{
    if (a == 0)
        return b;
    return gcd(b % a, a);
}

int main()
{
    int a = 2, b = 4;
    printf("GCD(%d,%d)=%d",a,b,gcd(a, b));
    return 0;
}