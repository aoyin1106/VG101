#include <stdio.h>
#include <string.h>
#define SIZE 255

int ex3() {
    FILE *fd1 = fopen("sentence.txt","r");
    FILE *fd2 = fopen("word.txt","r");
    char word[SIZE];
    int count=0;
    char str[SIZE];
    
    fscanf(fd2,"%s",word);
    while (fscanf(fd1,"%s",str)!=EOF)   // read a word into str
    {
        if (strcmp(str, word)==0)    // compare str and word as string
        {
        count++;
        }
    }
    FILE *fd3 = fopen("count.txt","w");
    fprintf(fd3,"%d\n",count);
    
    fclose(fd1);
    fclose(fd2);
    fclose(fd3);
    return 0;
}
