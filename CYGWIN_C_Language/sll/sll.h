#ifndef SLL
#define SLL

#include "data.h"

//to create list use head = append(NULL, data)
//or head = preppend(NULL, data)

typedef struct node{
	TData data;
    struct node* next;	
} TNode, *PNode;

int isLast(PNode node);
int isNode(PNode head, PNode reference);
PNode getLast(PNode node);
PNode getPrev(PNode head, PNode node);
int getNum(PNode head, PNode node);
PNode append(PNode head, TData data);
PNode preppend(PNode *head, TData data);
PNode find(PNode head, TData data);
int swap(PNode *head, PNode A, PNode B);
int del(PNode *head, PNode node);
int delreduced(PNode node);
void print(PNode head);
#endif