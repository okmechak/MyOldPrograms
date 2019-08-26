//#ifndef ONE_ENTRY_1

//#define ONE_ENTRY_1

#include "DataFormat.h"

/* example of usage
	node *start = linked_list_init();
	insert(start, data);
	del(start,data);
	print(start->next);
	SNode* status = find(start,data);
    if(status)
        printf("Element Found - %i\n", status->data);
    else
        printf("Element Not Found\n");
	free(start);
*/



struct node 
{
        Tdata data;
        struct node *next;
        struct node *prev;
};

void del(node *pointer, Tdata data, int (*compare)(Tdata data1, Tdata data2));
void insert(node *pointer, Tdata data);
node* find(node *pointer, Tdata key, int (*compare)(Tdata data1, Tdata data2));
node* select_by_num(node *pointer, int num);
int num_of_elents(node *pointer);
void print(node *pointer, void(*print_data)(Tdata data));


//#endif