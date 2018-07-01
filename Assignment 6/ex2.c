#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#define SIZE 3
#define PI 3.14159265

typedef struct cartesian {
    double x;
    double y;
} cartesian_t;

typedef struct polar {
    double r;
    double theta;
} polar_t;

cartesian_t* polar2cartesian (polar_t *p, int n) {
    cartesian_t *c = malloc(n * sizeof(cartesian_t));
    for (int i = 0; i < n; i++) {
        (c + i) -> x = (p + i) -> r * cos((p + i) -> theta);
        (c + i) -> y = (p + i) -> r * sin((p + i) -> theta);
    }
    return c;
    free(c);
}

polar_t* cartesian2polar (cartesian_t *c, int n) {
    polar_t *p = malloc(n * sizeof(polar_t));
    for (int i = 0; i < n; i++) {
        (p + i) -> r = sqrt(pow(((c + i) -> x), 2) + pow(((c + i) -> y), 2));
        if ((c + i) -> y >= 0)
            (p + i) -> theta = acos(((c + i) -> x) / (p + i) -> r);
        else
            (p + i) -> theta = 2 * PI - acos(((c + i) -> x) / (p + i) -> r);
    }
    return p;
    free(p);
}

void part1() {
    cartesian_t *c = malloc(SIZE * sizeof(cartesian_t));
    *(c + 0) = (cartesian_t){3.0, 0.8};
    *(c + 1) = (cartesian_t){0, log(4.0)};
    *(c + 2) = (cartesian_t){45.245, 0.235};

    polar_t *p = cartesian2polar(c, SIZE);
    for (int i = 0; i < SIZE; i++) {
        printf("%.5lf", (c + i) -> x);
        if ((c + i) -> y >= 0)
            printf("+");
        printf("%.5lfi ", (c + i) -> y);
        printf("%.5lfe%.5lfi\n", (p + i) -> r, (p + i) -> theta);
    }
    free(c);
}

void part2() {
    polar_t *p = malloc(SIZE * sizeof(polar_t));
    *(p + 0) = (polar_t){3.0, PI / 17.0};
    *(p + 1) = (polar_t){4.0, PI / 9.0};
    *(p + 2) = (polar_t){1.0, PI / 12.0};

    cartesian_t *c = polar2cartesian(p, SIZE);
    for (int i = 0; i < SIZE; i++) {
        printf("%.5lf", (c + i) -> x);
        if ((c + i) -> y >= 0)
            printf("+");
        printf("%.5lfi ", (c + i) -> y);
        printf("%.5lfe%.5lfi\n", (p + i) -> r, (p + i) -> theta);
    }
    free(p);
}

int main() {
    part1();
    part2();
    return 0;
}


