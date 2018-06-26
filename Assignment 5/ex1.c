#include <stdio.h>
#define SIZE 1010000    //These two figures can be adjusted according to the data range.
#define LOOP 1200

int main()
{
    short a[SIZE] = {0};
    int i,j;
    //We use the algorithm of the sieve of eratosthenes.
    for (i = 2; i < LOOP; i++)
    {
        if (a[i] == 0)
            for (j = 2; j < SIZE / i; j++)
                a[j * i] = -1;  //-1 means this number is not a prime number.
    }

    int n;
    scanf("%d", &n);
    for (i = 2; i < n; i++)
        if (a[i] == 0)
            printf("%d ", i);
    printf("\n");
}
