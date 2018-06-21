#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "sum.h"
#include "prod.h"
#include "rem.h"
#include "quo.h"
#include "prod.h"
#include "mpow.h"
int main() {
    int a, b;
    int c;
    printf("Enter two integers: ");
    scanf("%d %d",&a, &b);
    printf("Choose the operation by entering the corresponding number:1.quo 2.rem 3.sum 4.prod 5.mpow:");
    scanf("%d",&c);
    if (c==1)
        printf("Quotient: %d\n",quo(a,b));
    if (c==2)
        printf("Remainder: %d\n",rem(a,b));
    if (c==3)
        printf("Sum: %d\n",sum(a,b));
    if (c==4)
        printf("Product: %d\n",prod(a,b));
    if (c==5)
        printf("Exponent: %ld\n",mpow(a,b));
    return 0;
}