#include <stdio.h>
#include <math.h>
#include <float.h>

double trajectory(double a,double b,double c,double average){
    return a * pow(average,2) + b * average + c;
}

double bisection(double a,double b,double c,double min,double max) {
    double average = (min + max) / 2.0;

    if (max - min < FLT_EPSILON) // if the range is small enough
    {
        return average;
    } else {
        if (trajectory(a, b, c, average) * trajectory(a, b, c, min) <= 0)
        { max=average; }
        else
            { min=average; }
    }
    return bisection(a,b,c,min,max);
}


int main() {
    double height,min,max,v,theta;
    scanf("%lf %lf %lf %lf %lf",&v,&theta,&height,&min,&max);

    theta=theta/180.0*3.1415926536;   // convert angles in radians
            // the following only need to be calculated once in the whole program
    double a = -(9.81 / (2.0 * pow(v * cos(theta),2)));
    double b = tan(theta);
    double c = height;

    double ans = bisection(a,b,c,min,max);
    printf("%.6lf",ans);
    return 0;
}
