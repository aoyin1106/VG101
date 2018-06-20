#include <stdio.h>

int vowel(){
    char c;
    printf("input a character :");
    scanf(" %c",&c);
    if (c=='a'||c=='e'||c=='i'||c=='o'||c=='u'||c=='A'||c=='E'||c=='I'||c=='O'||c=='U')
    {
        printf("%c is a vowel!",c);
    }
    else
    {
        printf("%c is a consonant!",c);
    }
    return 0;
}

int data(){
    double size;
    char type;
    printf("input a data type: ");
    scanf("%lf %c",&size,&type);
    if (type == 'b')
    {
        double c = size/sizeof(char)/8.0;   //check the size of different data types.
        double i = size/sizeof(int)/8.0;
        double f = size/sizeof(float)/8.0;
        double d = size/sizeof(double)/8.0;
        printf("%lf char\n%lf int\n%lf float\n%lf double",c,i,f,d);

    }
    else if (type == 'B')
    {
        double c = size/sizeof(char);
        double i = size/sizeof(int);
        double f = size/sizeof(float);
        double d = size/sizeof(double);
        printf("%lf char\n%lf int\n%lf float\n%lf double",c,i,f,d);
    }
    else
    {
        printf("the data is not right!");
    }
    return 0;
}

int main() {
    char function;
    printf("'vowel check'(v) or 'data type conversion'(d)? : ");
    scanf("%c",&function);
    if (function == 'v')    //dispatch the work to different function
    {
        vowel();
    }
    else if (function == 'd')
    {
        data();
    }
    return 0;
}

