#include <stdio.h>
#include <string.h>

    int findstring(char *a,char *b,char *c);
    int main() {
        char sentence[100000];
        char string[100000];
        int all;
        printf("Input a sentence: ");
        char* temp=fgets(sentence,100000,stdin);
        if ('\n'==sentence[strlen(sentence)-1])
            sentence[strlen(sentence)-1]='\0';
        printf("Input a string: ");
        char* temp1=fgets(string,100000,stdin);
        if ('\n'==string[strlen(string)-1])
            string[strlen(string)-1]='\0';
        all=findstring(temp,temp1,&sentence[strlen(sentence)]);
        printf("The string '%s' occurs %d times",string,all);

        return 0;

    }

    int findstring(char *a,char *b,char* c) {
        int total = 0;
        char *check;
        check = strstr(a, b);
        if (check == NULL)
            total=0;
        else {
            while (check != NULL) {
                total = total + 1;
                a = check + 1;
                    check = strstr(a, b);

            }

        }
        return total;
    }
