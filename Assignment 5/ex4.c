#include <stdio.h>
#include <math.h>
#include <float.h>

double solve(double a, double b, double c, double range_min, double range_max);
double f(double a, double b, double c, double x);

int main()
{
    double v0, angle, h0, range_min, range_max;
    scanf("%lf %lf %lf %lf %lf", &v0, &angle, &h0, &range_min, &range_max);
    angle = angle / 180 * 3.1415926536;     //transform angle from degree into radian.
    double c = h0, b = tan(angle), a = -(9.81/(2.0 * v0 * v0 * cos(angle) * cos(angle)));
                                            //simplify the function.
    double ans = solve(a,b,c,range_min,range_max);
    printf("%.6lf", ans);
    return 0;
}

// Use bisection to get the solution of the quadratic equation.
double solve(double a, double b, double c, double range_min, double range_max)
{
    double mid = (range_max + range_min) / 2;
    if (range_max - range_min < FLT_EPSILON)
        return mid;
    else
    {
        if (f(a,b,c,range_min) * f(a,b,c,mid) <= 0)
            return solve(a,b,c,range_min,mid);
        else
            return solve(a,b,c,mid,range_max);
    }
}

//A simple quadratic function, used to simplify the expression in "solve" function.
double f(double a, double b, double c, double x)
{
    return a * x * x + b * x + c;
}