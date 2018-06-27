#include <stdio.h>
#include <string.h>
#define i 1010000


int main() {

    short a[i];

    int n;//the input number

   memset(a,0,sizeof(short)*i);

   scanf("%d",&n);

   int k;

   int j;

   for (k=2;k<=n;k++){

   if (a[k]==0){

       for (j=2;j<=n/k;j++){

           a[j*k]=1;
       }

   }
   else
       continue;
   }

   for (k=2;k<n;k++){

     if (a[k]==0)
         printf("%d ",k);
     else
         continue;


   }
    return 0;
}