#include<stdio.h>
#include<stdlib.h>
#include<math.h>

void line1(int m);
void line2();
void line3(int m,char day[]);
void ex2(int m,char day[]);

int main() {
  int m=0; char day[4]={0};
  scanf("%d %s",&m,day);
  //scanf("%d %3c",&m,&day);
  //printf("%d %s", m, day );
  ex2(m,day);
  return 0;
}

void ex2(int m,char day[]){
    line1(m);
    line2();
    line3(m,day);
}
void line1(int m){
  char *dic1[12]={"January","February","March","April","May","June","July","August","September","October","November","December"};
  printf("%s\n",dic1[m-1]);
}

void line2() {
  printf("Sun Mon Tue Wed Thu Fri Sat\n");
}

void line3(int m,char day[]){
  int dic2[]={31,28,31,30,31,30,31,31,30,31,30,31};
  int start=0;
//  printf("%s\n", day);
switch (day[0]){
default:break;
case 'S':
    if(day[1]=='u'){
    start=0;
    }else{
    start=6;
    }
    break;
case 'M':
    start=1;
    break;
case 'T':
    if (day[1]=='u') {
      start=2;
    }else{
      start=4;
    }
    break;
case 'W':
    start=3;
    break;
case 'F':
    start=5;
    break;
}
//  printf("%d\n",start);
for (size_t i = 0; i < start; i++) {
    printf("    ");
  }

for (size_t i = 0; i < dic2[m-1]; i++,start++) {
  start=start%7;
  if (i<9) {
    printf(" %llu  ",i+1);
  }
  if(i>=9){
    printf("%llu  ",i+1);
  }

  if (start==6) {
    printf("\n");
  }
}

}
