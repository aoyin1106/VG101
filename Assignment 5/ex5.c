#include <stdio.h>
#include <stdlib.h>
#include<time.h>
typedef struct card{
  char *figure;
  char *suit;
  int change;
}card_t;
int comp(const void*a,const void*b)//用来做比较的函数。
{
    return *(int*)a-*(int*)b;
}
int main(){
  char *figure[13]={"2    ","3    ","4    ","5    ","6    ","7    ","8    ","9    ","10   ","Jack ","Queen","King ","Ace  "};
  char *suit[4]={"Spades","Hearts","Diamonds","Clubs"};
  int order[52];
  int ran1=0,ran2=0;
  for (size_t i = 0; i < 52; i++) {
    order[i]=i;
  }
  srand(time(NULL));

  card_t card[52];
  //initialize
  for (size_t i = 0,j=0; i <= 48; i=i+4,j++) {
    card[i].figure=figure[j];
    card[i].suit=suit[0];
  }for (size_t i = 1,j=0; i <= 49; i=i+4,j++) {
    card[i].figure=figure[j];
    card[i].suit=suit[1];
  }for (size_t i = 2,j=0; i <= 50; i=i+4,j++) {
    card[i].figure=figure[j];
    card[i].suit=suit[2];
  }for (size_t i = 3,j=0; i <= 51; i=i+4,j++) {
    card[i].figure=figure[j];
    card[i].suit=suit[3];
  }
  //end initialize
  //Firstdeck
  printf("First deck\nFigure  Suit\n");
  for (size_t i = 0; i < 52; i++) {
    printf("  %s %s\n", card[i].figure,card[i].suit);
  }
  //end
  int buffer;
  for (size_t i = 0; i < 100; i++) {
    ran1=rand()%52;ran2=rand()%52;
    //order[ran1]=order[ran1]+order[ran2];order[ran2]=order[ran1]-order[ran2];order[ran1]=order[ran1]-order[ran2];
    buffer=order[ran1];order[ran1]=order[ran2];order[ran2]=buffer;
  }

  //second deck
  // for (size_t i = 0; i < 52; i++) {
  //   printf("%d\n", order[i]);
  // }

  printf("\n\n\nSecond deck\nFigure  Suit\n");
  for (size_t i = 0; i < 52; i++) {
    printf("  %s %s\n", card[order[i]].figure,card[order[i]].suit);
  }
  //end

  //reorder the order[]
  qsort(order,52,sizeof(int),comp);
  //end

  //third deck
  printf("\n\n\nThird deck\nFigure  Suit\n");
  for (size_t i = 0; i < 52; i++) {
    printf("  %s %s\n", card[order[i]].figure,card[order[i]].suit);
  }
  //end




  return 0;
}
