#include <stdio.h>
#include<math.h>
int main(){
    double a,b,c,delta,result,result2;
    a=0;b=0;c=0;
    //printf("input");
    scanf("%lf %lf %lf", &a,&b,&c);
    delta=b*b-4*a*c;
    if(delta==0){
        result=-b/(2*a);
        printf("%.5lf", result);
        return 0;
    }
    if(delta<0){
        delta=-delta;
        double resultreal=(-b)/(2*a);
        double resultimg=(sqrt(delta))/(2*a);
        double result2real=(-b)/(2*a);
        double result2img=(sqrt(delta))/(2*a);
        printf("%.5lf-%.5lfi\n%.5lf+%.5lfi", resultreal,resultimg,result2real,result2img);
        return 0;
    }
    if(delta>0){
        result=(-b-sqrt(delta))/(2*a);
        result2=(-b+sqrt(delta))/(2*a);
        printf("%.5lf\n%.5lf", result,result2);
    }
    return 0;
}
