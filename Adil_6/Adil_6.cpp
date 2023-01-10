// Adil_6.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Adil Ahmad

#include <iostream>
#include <stdio.h>

int natural_generator()
{
    int a = 1;
    static int b = -1;
    b += 1;
    return a + b;
}

int main()
{
    printf("%d\n", natural_generator());
    printf("%d\n", natural_generator());
    printf("%d\n", natural_generator());
    return 0;
}

