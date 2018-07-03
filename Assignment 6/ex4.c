#include <stdio.h>
#include  <stdlib.h>
#include <string.h>


int main() {
    char str[1024];// str array

    int len,number;//length of the string,the number of the numbers

    int j,i,s=0;

    int r=0;

    FILE *fd=fopen("./matrices.txt","r");
    


    fgets(str,1024,fd);

    len=strlen(str);//include the \n

    for (i=0;i<=(len);i++){
        if (str[i]==' '){
            s=s+1;   //find how many spaces are there
        }
        else
            continue;
    }

    number=s+1;//get how many numbers are there in one row

    while (str[0]!='\n'){
        r=r+1; //find how many columns are there
        fgets(str,1024,fd);
    }

    int a[r][number];

    fseek(fd, 0, SEEK_SET);//jump back to the beginning of the document

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            fscanf(fd,"%d",&a[i][j]);   //end of this loop, will the fd still at the beginning of the document?
    }

    int b[r][number];

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            fscanf(fd,"%d",&b[i][j]);   // another matrices
    }

    fclose(fd);// close the file

    int ad[r][number];//add

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            ad[i][j]=a[i][j]+b[i][j];
    }

    int mu[r][number];//multiply

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            mu[i][j]=a[i][j]*b[i][j];
    }

    int tr[number][r];//transverse

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            tr[i][j]=a[j][i]+b[j][i];
    }


    FILE *fp=fopen("./result.txt","w");
    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            if (j==number-1) {
                fprintf(fp,"%d\n",ad[i][j]);
            }
            else
                fprintf(fp,"%d ",ad[i][j]);
    }
    fprintf(fp,"\n");

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            if (j==number-1) {
                fprintf(fp,"%d\n",mu[i][j]);
            }
            else
                fprintf(fp,"%d ",mu[i][j]);
    }

    fprintf(fp,"\n");

    for (i=0;i<=r-1;i++){
        for (j=0;j<=number-1;j++)
            if (j==number-1) {
                fprintf(fp,"%d\n",tr[i][j]);
            }
            else
                fprintf(fp,"%d ",tr[i][j]);
    }



    //fwrite(ad, sizeof(int),r*number, fp );
    //fwrite(mu, sizeof(int),r*number, fp );
    //fwrite(tr, sizeof(int),r*number, fp );
    fclose(fp);


    return 0;
}
