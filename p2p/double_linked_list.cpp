#include<stdio.h>
#include<stdlib.h>
#include <string.h>

#include "double_linked_list.h"


void del(node *pointer, Tdata data, int (*compare)(Tdata data1, Tdata data2))
{
        /* Go to the node for which the node next to it has to be deleted */
        while(pointer->next!=NULL && !compare((pointer->next)->data, data))
        {
                pointer = pointer -> next;
        }
        if(pointer->next==NULL)
        {
                printf("Element is not present in the list\n");
                return;
        }
        /* Now pointer points to a node and the node next to it has to be removed */
        node *temp;
        temp = pointer -> next;
        /*temp points to the node which has to be removed*/
        pointer->next = temp->next;
        temp->prev =  pointer;
        /*We removed the node which is next to the pointer (which is also temp) */
        free(temp);
        /* Beacuse we deleted the node, we no longer require the memory used for it . 
           free() will deallocate the memory.
         */
        return;
}


void insert(node *pointer, Tdata data)
{
        /* Iterate through the list till we encounter the last node.*/
        while(pointer->next!=NULL)
        {
                pointer = pointer -> next;
        }
        /* Allocate memory for the new node and put data in it.*/
        pointer->next = (node *)malloc(sizeof(node));
        (pointer->next)->prev = pointer;
        pointer = pointer->next;
        pointer->data = data;
        pointer->next = NULL;
}

node* find(node *pointer, Tdata key, int (*compare)(Tdata data1, Tdata data2))
{
        pointer =  pointer -> next; //First node is dummy node.
        /* Iterate through the entire linked list and search for the key. */
        while(pointer!=NULL)
        {
                if( compare(pointer->data, key) ) //key is found.
                {
                        return pointer;
                }
                pointer = pointer -> next;//Search in the next node.
        }
        /*Key is not found */
        return pointer;
}

node* select_by_num(node *pointer, int num)
{
        pointer =  pointer -> next; //First node is dummy node.
        /* Iterate through the entire linked list and search for the key. */
		int i = 1;
        while(pointer!=NULL)
        {
                if( ++i == num ) //key is found.
                {
                        return pointer;
                }
                pointer = pointer -> next;//Search in the next node.
        }
        
        return pointer;
}


int num_of_elents(node *pointer)
{
        pointer =  pointer -> next; //First node is dummy node.
        /* Iterate through the entire linked list and search for the key. */
		int i = 0;
        while(pointer!=NULL)
        {
                ++i;
                pointer = pointer -> next;//Search in the next node.
        }
        return i;
}


void print(node *pointer, void(*print_data)(Tdata data))
{
        if(pointer==NULL)
        {
                return;
        }
        print_data(pointer->data);
        print(pointer->next, print_data);
}