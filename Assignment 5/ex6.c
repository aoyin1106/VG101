#include <stdio.h>
#include <stdlib.h>
#include <time.h>
//#define TEST
#define SWAP(a,b) { a ^= b; b ^= a; a ^= b; }                       //Swap two binary numbers using XOR

int getDigit(unsigned int len, unsigned long int b);
unsigned long int mult(unsigned long int a, unsigned long int b);

int main () {
    unsigned long int a, b;
    srand(time(NULL));                                              //Initialize rand function

    #ifndef TEST                                                    //No -DTEST in compiling configurations
    a = rand();                                                     //Randomly generate two integers between 0 and RAND_MAX
    b = rand();
    printf("%ld*%ld=%ld %ld\n", a, b, mult(a, b), RAND_MAX);        //Display the result of low-level multiplying, and RAND_MAX
    #endif

    #ifdef TEST                                                     //-DTEST in compiling configurations
    int i;
    for(i=0; i < 1000000; i++)                                      //Test 1000000 cases
    {
        a = rand();
        b = rand();
        if (mult(a,b) != a * b)                                     //If the program finds an error, display it and exit with exitcode -1
        {
            fprintf(stderr,"Error (%d): a=%ld, b=%ld, a*b=%ld, k(a,b)=%ld\n", i, a, b, a*b, mult(a,b));
            exit(-1);
        }
    }
    #endif
}

int getDigit(unsigned int len, unsigned long int b)                 //Use bisection algorithm to get the length of a binary number
{
    if (len == 1)                                                   //The criteria for the recursion to exit.
        return 1;                                                   //If the length of binary number is 1, return 1
    else {
        unsigned int halfLen = len >> 1;
        unsigned long int left = b >> halfLen;                      //Get the left part and right part of the binary number
        unsigned long int right = b & ((1 << halfLen) - 1);         //e.g. halfLen = 4, b = 1001 -> left = 10, right = 01
        if (left)                                                   //Metaphysics (Xuan Xue) here
            return getDigit(halfLen, left) + halfLen;
        else
            return getDigit(halfLen, right);
    }
}

unsigned long int mult(unsigned long int a, unsigned long int b)    //Only work for non-negative integers
{
    int i, n, N;
    unsigned long int x0, y0, z0, z1 = 1;
    if (a < b)                                                      //a should be greater than or equal to b
        SWAP(a,b);
    if (b == 0)                                                     //The criteria for the recursion to exit
        return 0;
    //for (n = -1, i = 1; i <= b; i <<= 1, n++); /* not optimal */  //Get the number of digits of b and a
    //for (N = n; i <= a; i <<= 1, N++);                            //But this number is the number of digits minus 1, e.g., b = 11010, n = 4

    n = getDigit((unsigned int)sizeof(unsigned long int)*8, b) - 1; //The function realizes the same feature as above.
    N = getDigit((unsigned int)sizeof(unsigned long int)*8, a) - 1; //However, the time complexity reduces from O(s) to O(log s), here s = 64

    y0 = b & ((1 << n) - 1);                                        //Get the last n digits of b. e.g. b = 11010, y0 = 1010
    x0 = a & ((1 << N) - 1);
    z0 = mult(x0,y0);                                               //Recursion, calculate x0 * y0
    i = N + n;                                                      //Total digits of x0 and y0
    return ((z1 << i) + (x0 << n) + (y0 << N) + z0);                //Use Karatsuba algorithm to return the result
}