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



void polar2cartesian (cartesian_t *c,polar_t *p, int n) ;




void cartesian2polar (polar_t *p,cartesian_t *c, int n);














int main() {

    polar_t *p = malloc(2 * sizeof(polar_t));

    *(p + 0) = (polar_t) {3.0, PI / 17.0};

    *(p + 1) = (polar_t) {1.0, PI / 12.0};

    cartesian_t *e = malloc(2 * sizeof(cartesian_t));


    polar_t *d = malloc(4 * sizeof(polar_t));

    cartesian_t *c = malloc(4 * sizeof(cartesian_t));

    *(c + 0) = (cartesian_t) {3.0, 0.8};

    *(c + 1) = (cartesian_t) {0, log(4.0)};

    *(c + 2) = (cartesian_t) {45.245, 0.235};

    *(c + 3) = (cartesian_t) {4 * cos(PI / 9), 4 * sin(PI / 9)};


    cartesian2polar(d, c, 4);

    polar2cartesian(e, p, 2);



    for (int i = 0; i <= SIZE; i++) {



        if (i == SIZE) {
            printf("%.5lfe%.5lfi ", (p + 0)->r, (p + 0)->theta);

            printf("%.5lf", (e + 0)->x);

            if ((e + 0)->y >= 0) printf("+");

            printf("%.5lfi\n", (e + 0)->y);

            printf("%.5lf",(c + i)->x);

            if ((c + i)->y >= 0) {

                printf("+");

                printf("%.5lfi ", (c + i)->y); }

            else

                printf("%.5lfi ", (c + i)->y);

            printf("%.5lfe%.5lfi\n", (d + i)->r, (d + i)->theta);


            printf("%.5lfe%.5lfi ", (p + 1)->r, (p + 1)->theta);

            printf("%.5lf", (e + 1)->x);

            if ((e + 1)->y >= 0) printf("+");

            printf("%.5lfi\n", (e + 1)->y);}


            if (i!=SIZE){

            printf("%.5lf",(c + i)->x);

            if ((c + i)->y >= 0) {

                printf("+");

                printf("%.5lfi ", (c + i)->y); }

            else

                printf("%.5lfi ", (c + i)->y);

                printf("%.5lfe%.5lfi\n", (d + i)->r, (d + i)->theta);
            }
    }

    free(p);

    free(e);

    free(c);

    free(d);
    
    return 0;
}







void polar2cartesian (cartesian_t *c,polar_t *p, int n) {


    for (int i = 0; i < n; i++) {

        (c + i)->x = (p + i)->r * cos((p + i)->theta);

        (c + i)->y = (p + i)->r * sin((p + i)->theta);

    }
}


void cartesian2polar (polar_t *p,cartesian_t *c, int n) {


    for (int i = 0; i < n; i++) {

        (p + i)->r = sqrt(pow(((c + i)->x), 2) + pow(((c + i)->y), 2));

        if ((c + i)->y >= 0)

            (p + i)->theta = acos(((c + i)->x) / (p + i)->r);

        else

            (p + i)->theta = 2 * PI - acos(((c + i)->x) / (p + i)->r);

    }
}

