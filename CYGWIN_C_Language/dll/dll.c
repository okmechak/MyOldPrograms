#include <stdlib.h>
#include <stdio.h>
#include "dll.h"


int isLast(PNode node){
	if(node == NULL)
		return 0;
	return (node->next == NULL);
}


int isFirst(PNode node){
	if(node == NULL)
		return 0;
	return (node->prev == NULL);
}


PNode getLast(PNode node){
	if(node == NULL)
		return node;
	while( !isLast(node) )
		node = node->next;
	return node;
}


PNode getFirst(PNode node){
	if(node == NULL)
		return NULL;
	while( !isFirst(node) )
		node = node->prev;
	return node;
}


int getNum(PNode node){
	int num = 0;
	PNode iterNode = getFirst(node);
	while(iterNode != NULL){
		if (iterNode==node)
			break;
		num++;
		iterNode = iterNode->next;
	}
	return num;
}


PNode append(PNode node, TData data)
{
	PNode lastNode = getLast(node);
	
	PNode newNode = (PNode) malloc(sizeof(TNode));
	if( newNode != NULL ){
		if(lastNode != NULL)
			lastNode->next = newNode;
		newNode->data = data;
		newNode->prev = lastNode;
		newNode->next = NULL;
	}
	return newNode;
}


PNode preppend(PNode node, TData data)
{
	node = getFirst(node);
	
	PNode newHead = (PNode) malloc( sizeof(TNode) );
	if(node != NULL && newHead!=NULL)
	{
		newHead->next = node;
		newHead->data = data;
		node->prev = newHead;
		node = newHead;
	}
	return node;
}


PNode find(PNode node, TData data){
	node = getFirst(node);
	while (node != NULL){
		if(compare((PData)node, &data))
			break;
		node = node->next;
	}
	return node;
} 
 

int deleteNode(PNode *head, PNode node){
	if(node==NULL)
		return -1;
	
	if(*head==node)
		if(node->next != NULL)
			*head = node -> next;
		else if(node->prev != NULL)
			*head = node -> prev;
		else *head == NULL;
		
	if(!isFirst(node))
		node->prev->next = node->next;
	if(!isLast(node))
		node->next->prev = node->prev;
	
	free( node );
	return 0;
}

int deleteAll(PNode *head){
	*head = getFirst(*head);
	PNode next = NULL;
	if (*head!=NULL)
		while(*head != NULL){
			next = (*head)->next;
			free(*head);
			*head = next;
		}
	return 0;
}


int swap(PNode n1, PNode n2){
	
	PNode temp, temp1;
	if(n1==NULL || n2==NULL)
		return -1;
	if(n2->next == n1){
		temp = n1;
		n1 = n2;
		n2 = n1;
	}
	if(n1->next == n2){
		n1->next = n2->next;
        n2->prev = n1->prev;
        if(!isLast(n1))
            n1->next->prev = n1;
        if(!isFirst(n2))
            n2->prev->next = n2;
        n2->next = n1;
        n1->prev = n2;
	}else{
		temp = n1->prev;
		temp1 = n1->next;
		n1->prev = n2->prev; 
		n1->next = n2->next; 
		n2->prev = temp;
		n2->next = temp1;
		
		if(n1->next != 0)
			n1->next->prev = n1;
		if(n1->prev != 0)
			n1->prev->next = n1;
		if(n2->next != 0)
			n2->next->prev = n2;
		if(n2->prev != 0)
			n2->prev->next = n2;
	}
	return 0;
} 


void printList(PNode node)
{
	printf("\n NULL <-> ");
	node = getFirst(node);
	if(node != NULL)
		do{
			printData((PData)node);
			printf(" <-> ");
		}while( (node = node->next) != NULL);
		printf("NULL\n\n");
}