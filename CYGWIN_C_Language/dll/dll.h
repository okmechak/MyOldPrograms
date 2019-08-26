#ifndef DLL
#define DLL

#include "data.h"

//to create list use head = append(NULL, data)
//or head = preppend(NULL, data)

typedef struct node{
	TData data;
    struct node* next;	
	struct node* prev;	
} TNode, *PNode;

int isLast(PNode node);
int isFirst(PNode node);
PNode getLast(PNode node);
PNode getFirst(PNode node);
int getNum(PNode node);
PNode append(PNode node, TData data);
PNode preppend(PNode node, TData data);
PNode find(PNode node, TData data);
int swap(PNode n1, PNode n2);
int deleteNode(PNode *head, PNode node);
int deleteAll(PNode *head);
void printList(PNode node);
#endif