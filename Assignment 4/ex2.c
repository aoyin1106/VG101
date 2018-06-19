#include <stdio.h>

int gcd(int a, int b) {
    if (b == 0)
        return a;
    else
        return gcd(b, a % b);   // Using this formula: gcd(a, b) = gcd(b, a mod b).
}

int main() {
    int a, b;
    scanf("%d%d", &a, &b);
    printf("%d\n", gcd(a,b));
}