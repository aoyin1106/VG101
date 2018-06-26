#include <stdio.h>

int main() {
    char sentence[10000], word[10000];
    int  len1 = 0, len2 = 0;                    //len1: length of sentence; len2: length of word.
    printf("Input a sentence: ");
    gets(sentence);
    for (;;len1++)
        if (sentence[len1] == '\0')
            break;
    printf("Input a string: ");
    gets(word);
    for (;;len2++)
        if (word[len2] == '\0')
            break;

    int i, j, flag, count = 0;
    for (i = 0; i <= len1 - len2; i++)
    {
        flag = 1;
        for (j = 0; j < len2; j++)              //Compare part of sentence and the word, char by char.
            if (word[j] != sentence[i + j])
            {
                flag = 0;
                break;
            }
        if (flag == 1)
            count++;
    }
    printf("The string '%s' occurs %d times\n", word, count);
}