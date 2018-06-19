#include <stdio.h>

typedef struct _complex {
    int re;
    int im;
} complex;

//Add two complex numbers. Return a complex number.
complex add(complex n1, complex n2) {
    complex result = {n1.re + n2.re, n1.im + n2.im};
    return result;
}

//Multiply two complex numbers. Return a complex number.
complex multiply(complex n1, complex n2) {
    complex result = {n1.re * n2.re - n1.im * n2.im, n1.im * n2.re + n1.re * n2.im};
    return result;
}

//Function of input. Return a complex number.
complex input(){
    int re, im;
    scanf("%d %di ", &re, &im);
    complex n = {re, im};
    return n;
}

int main() {
    complex n1 = input();
    complex n2 = input();
    char operation;
    scanf("%c", &operation);

    complex ans = {0,0};
    switch(operation) {
        case '+': ans = add(n1, n2); break;
        case '*': ans = multiply(n1, n2); break;
    }

    if (ans.im >= 0)
        printf("%d+%di\n", ans.re, ans.im);
    else
        printf("%d%di\n", ans.re, ans.im);

    return 0;
}