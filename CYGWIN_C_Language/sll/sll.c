#include <stdlib.h>
#include <stdio.h>
#include "sll.h"

// is reference a node of linked list
int isNode(PNode head, PNode reference){
	while(head != NULL){
		if(head == reference)
			return 1;
		head = head->next;
	}
	return 0;
}


int isLast(PNode head){
	if(head == NULL)
		return 0;
	return (head->next == NULL);
}


PNode getLast(PNode head){
	if(head == NULL)
		return NULL;
	while( !isLast(head) )
		head = head->next;
	return head;
}


PNode getPrev(PNode head, PNode node){
	while(head != NULL ){
		if(head->next == node)
			break;
		head = head->next;
	}
	return head;
}


int getNum(PNode head, PNode node){
	int num = 1;
	while(head != NULL){
		num++;
		if (head==node)
			break;
		head = head->next;		
	}
	return num;
}


PNode append(PNode head, TData data)
{
	PNode lastNode = getLast(head);
	
	PNode newNode = (PNode) malloc(sizeof(TNode));
	if( newNode != NULL ){
		if(lastNode != NULL)
			lastNode->next = newNode;
		newNode->data = data;
		newNode->next = NULL;
	}
	return newNode;
}


PNode preppend(PNode *head, TData data)
{
	PNode newHead = (PNode) malloc( sizeof(TNode) );
	if( newHead != NULL)
	{
		newHead->next = *head;
		newHead->data = data;
		*head = newHead;
	}
	return *head;
}

PNode find(PNode head, TData data){
	while (head != NULL){
		if(compare((PData)head, &data))
			break;
		head = head->next;
	}
	return head;
} 
 
int del(PNode *head, PNode node){
	if(!isNode(*head, node)||*head==NULL)
		return -1;
	
	//case when head equals to deleted node
	if(*head == node){
		*head = node -> next;
		free(node);
		return 0;
	}
	
	//case when head don't equals to node
	*head = getPrev(*head, node);	
	
	(*head)->next = node->next;
	free( node );
	return 0;
}

//delete without head
int delreduced(PNode node){
	if( node == NULL || isLast(node) )
		return -1;
	PNode temp = node -> next;
	*node = *temp;
	free(temp);
	return 0;
}
 
int swap(PNode *head, PNode A, PNode B){
	//checks inputs for correct values
	if( *head == NULL || !isNode(*head, A)|| !isNode(*head, B))
		return -1;
	//а вдруг
	if( A==B )
		return 0;
	
	//element A must be first relatively to B in linked list
	PNode temp = A;
	if (getNum(*head, A) > getNum(*head, B)){
		temp = A;
		A = B;
		B = temp;
	}
	
	//change previous of Nodes
	PNode prevA = getPrev(*head, A);
	PNode prevB = getPrev(*head, B);
	if( prevA != NULL )
		prevA->next = B;
	prevB->next = A;
	
	//change next of Nodes;
	temp = A->next;
	A->next = B->next;
	B->next = temp;
	
	//change head 
	if(*head == A)
		*head = B;
	return 0;
} 
 
void print(PNode head)
{
	printf("\n");
	if(head != NULL)
		do{
			printData((PData)head);
			printf(" -> ");
		}while( (head = head->next) != NULL);
		printf("NULL\n\n");
}