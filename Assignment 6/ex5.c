#include <stdio.h>
#include <string.h>
#include "universal_set.h"
#include <stdlib.h>


void resizeset(uset *set){
  set->elem=realloc(set->elem,(set->card/64)*64*set->type);
}

void newSet(uset *set, int type){
  set->type = type;
  set->card = 0;
  set->elem = calloc(INITSETSIZE, type);
}

void newSet(uset *set, int type){
  free set;
}

void addElem(void *elem, uset *set);{
  switch (set->type) {
  case CHAR:
    char *buffer = (char*)set->elem;
    char *new = (char*)elem;
    for (size_t i = 0; i < set->card; i++) {
      if (buffer[i]==elem) {
        return;
      }
    }
    if (set->card%64==0){
      resizeset(set);
    }
    set->card++;
    set->elem[set->card]=new;
  case INT:
    int *buffer = (int*)set->elem;
    int *new = (int*)elem;
    for (size_t i = 0; i < set->card; i++) {
      if (buffer[i]==elem) {
        return;
      }
    }
    if (set->card%64==0){
      resizeset(set);
    }
    set->card++;
    set->elem[set->card]=new;
  case DOUBLE:
    double *buffer = double*)set->elem;
    double *new = (double*)elem;
    for (size_t i = 0; i < set->card; i++) {
      if (buffer[i]==elem) {
        return;
      }
    }
    if (set->card%64==0){
      resizeset(set);
    }
    set->card++;
    set->elem[set->card]=new;
  }
}

void remElem(void *elem, uset *set){
  switch (set->type) {
  case CHAR:
    char *buffer = (char*)set->elem;
    for (size_t i = 0; i < set->card; i++) {
      if(buffer[i]==elem){
        memmove(buffer+i,buffer+i+1,(set->card-(i+1))*set->type);
      }
    }
    set->card=set->card-1;
    resizeset(set);
  case INT:
    int *buffer = (int*)set->elem;
    for (size_t i = 0; i < set->card; i++) {
      if(buffer[i]==elem){
        memmove(buffer+i,buffer+i+1,(set->card-(i+1))*set->type);
      }
    }
    set->card=set->card-1;
    resizeset(set);
  case DOUBLE:
    double *buffer = (double*)set->elem;
    for (size_t i = 0; i < set->card; i++) {
      if(buffer[i]==elem){
        memmove(buffer+i,buffer+i+1,(set->card-(i+1))*set->type);
      }
    }
    set->card=set->card-1;
    resizeset(set);
}
}
