#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "list.h"
int ex7() {
    node_t *a=Initialize('1');
    node_t *b=NULL;
    PrintList(a);
    InsertFirstList(&a, 'V');
    InsertFirstList(&a, 'M');
    PrintList(a);
    InsertLastList(&a, 'C');
    PrintList(a);
    SplitList(&a, &b, 2);
    PrintList(a);
    PrintList(b);
    DeleteFirstList(&a);
    PrintList(a);
    InsertLastList(&a, 'G');
    DeleteLastList(&b);
    PrintList(b);
    InsertLastList(&b,'0');
    PrintList(b);
    InsertLastList(&b, '1');
    PrintList(b);
    MergeList(&a,&b);
    PrintList(a);

    char target='G';
    printf("Count '%c': %d\n",target, SearchList(&a,target));
    target='1';
    printf("Count '%c': %d\n",target, SearchList(&a,target));
    FreeList(&a);
    return 0;
}

node_t *Initialize(char ch) {
    node_t *head;
    head = (node_t*)calloc(1,sizeof(node_t));
    if (head == NULL) {
        fprintf(stderr,"Failed to assign memory!\n");
        exit(-1);
    }
    head->next = NULL;
    head->ch = ch;
    return head;
}

void PrintList(node_t *head) {
    node_t *temp = head;
    printf("***Print Linked List***\n");
    while (temp != NULL) {
        printf("%c ",temp->ch);
        temp = temp->next;
    }
    printf("\n****Print Finished****\n\n");
}

void FreeList(node_t **head) {
    node_t *tmp = NULL;
    node_t *pHead = *head;
    while (pHead->next != NULL) {
        tmp = pHead;
        pHead = pHead->next;
        free(tmp);
    }
    free(pHead);
}

bool IsEmptyList(node_t *head) {
    if (head == NULL)
        return true;
    else
        return false;
}

void InsertFirstList(node_t **head,char insert_char) {
    node_t *pHead;
    pHead = (node_t*)calloc(1,sizeof(node_t));
    pHead->ch = insert_char;
    pHead->next = *head;
    *head = pHead;
}

void InsertLastList(node_t **head,char insert_char) {
    node_t *tmp = NULL;
    node_t *pHead = *head;
    node_t *new;
    new = (node_t*)calloc(1,sizeof(node_t));
    while (pHead->next != NULL) {
        tmp = pHead;
        pHead = pHead->next;
    }
    pHead->next = new;
    new->ch = insert_char;
    new->next = NULL;
}

void DeleteFirstList(node_t **head) {
    if (IsEmptyList(*head) == true)
        return;
    else {
        node_t *pHead = *head;
        *head = pHead->next;
        free(pHead);
    }
}

void DeleteLastList(node_t **head) {
    if (IsEmptyList(*head) == true)
        return;
    else {
        node_t *pHead = *head;
        node_t *tmp = pHead;
        while (pHead->next != NULL) {
            tmp = pHead;
            pHead = pHead->next;
        }
        free(pHead);
        tmp->next = NULL;
    }
}

int SizeList(node_t *head) {
    if (IsEmptyList(head) == true)
        return 0;
    else {
        int n = 1;
        node_t *tmp = NULL;
        node_t *pHead = head;
        while (pHead->next != NULL) {
            tmp = pHead;
            pHead = pHead->next;
            n++;
        }
        return n;
    }
}

int SearchList(node_t **head, char target) {
    if (IsEmptyList(*head) == true)
        return 0;
    else {
        int count = 0;
        node_t *tmp = NULL;
        node_t *pHead = *head;
        if (pHead->ch == target)
            count++;
        while (pHead->next != NULL) {
            tmp = pHead;
            pHead = pHead->next;
            if (pHead->ch == target)
                count++;
        }
        return count;
    }
}

void SplitList(node_t **head, node_t **tail, int pos) {
    if (pos > SizeList(*head))
        return;
    else {
        int n = 1;
        node_t *tmp = NULL;
        node_t *pHead = *head;
        while (n <= pos) {
            tmp = pHead;
            pHead = pHead->next;
            n++;
        }
        if (tmp != NULL)
            tmp->next = NULL;
        node_t *tmpEnd = pHead;
        *tail = Initialize(pHead->ch);
        while (pHead->next != NULL) {
            tmp = pHead;
            pHead = pHead -> next;
            InsertLastList(tail, pHead->ch);
        }
        FreeList(&tmpEnd);
    }
}

void MergeList(node_t **head1, node_t **head2) {
    node_t *tmp = NULL;
    node_t *pHead = *head1;
    while (pHead->next != NULL) {
        tmp = pHead;
        pHead = pHead->next;
    }
    pHead->next = *head2;
    while (pHead->next != NULL) {
        tmp = pHead;
        pHead = pHead->next;
    }
}

int main() {
    ex7();
}