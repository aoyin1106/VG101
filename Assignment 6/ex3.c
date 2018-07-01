#include <stdio.h>
#include <string.h>
#define SIZE 255

void ex3() {
    FILE *f1 = fopen("sentence.txt", "r");
    FILE *f2 = fopen("word.txt", "r");
    char sentence[SIZE];
    char word[SIZE];

    fgets(sentence, SIZE, f1);
    fgets(word, SIZE, f2);

    fclose(f1);
    fclose(f2);


    FILE *f3 = fopen("count.txt", "w");
    int count = 0, i = 0, j = 0, flag = 0;
    int l1 = (int)strlen(sentence) - 1, l2 = (int)strlen(word) - 1;

    for (i = 0; i <= l1 - l2; i++) {
        flag = 1;
        for (j = 0; j < l2; j++)                //Compare the word and part of the sentence char by char
            if (sentence[i + j] != word[j])
                flag = 0;
        if (flag == 1)
            count++;
    }
    fprintf(f3, "%d\n", count);
    fclose(f3);
}

int main() {
    ex3();
}