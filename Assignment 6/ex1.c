#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, i;
    scanf("%d", &n);

    int *a = malloc(n * sizeof(int)), max = 0;
    for (i = 0; i < n; i++) {                   //Input integers and find the max
        scanf("%d", a + i);
        if (*(a + i) > max)
            max = *(a + i);
    }

    srand(0);
    int r = rand() % max;                       //Generate a random integer less than the max
    for (i = 0; i < n; i++) {
        if (*(a + i) > r)
            printf("%d ", *(a + i));
    }
    printf("\n");

    free(a);
    return 0;
}