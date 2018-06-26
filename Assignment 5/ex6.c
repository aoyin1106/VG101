#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define SWAP(a,b) { a ^= b; b ^= a; a ^= b; }

unsigned long int mult(unsigned long int a, unsigned long int b);

int main () {
    unsigned long int a, b;
    srand(time(NULL));

    #ifndef TEST
    a = rand();
    b = rand();
    printf("%ld*%ld=%ld %ld\n", a, b, mult(a, b), RAND_MAX);
    #endif

    #ifdef TEST
    int i;
    for(i=0; i < 1000000; i++)
    {
        a = rand();
        b = rand();
        if (mult(a,b) != a * b)
        {
            fprintf(stderr,"Error (%d): a=%ld, b=%ld, a*b=%ld, k(a,b)=%ld\n", i, a, b, a*b, mult(a,b));
            exit(-1);
        }
    }
    #endif
}

unsigned long int mult(unsigned long int a, unsigned long int b)
{
    int i, n, N;
    unsigned long int x0, y0, z0, z1 = 1;
    if (a < b)
        SWAP(a,b);
    if (b == 0)
        return 0;
    for (n = -1, i = 1; i <= b; i <<= 1, n++); /* not optimal */
    for (N = n; i <= a; i <<= 1, N++);

    y0 = b & ((1 << n) - 1);
    x0 = a & ((1 << N) - 1);
    z0 = mult(x0,y0);
    i = N + n;
    return ((z1 << i) + (x0 << n) + (y0 << N) + z0);
}