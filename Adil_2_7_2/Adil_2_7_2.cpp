// Adil_2_7_2.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Adil Ahmad

#include <iostream>

//2 - 7_2.c
int main() {
    static int i = 8;
    static int k = 20;
    static int save[100];

    save[8] = 20;
    save[9] = 20;

    while (save[i] == k) {
        i++;
    }
    k = 0;
}

