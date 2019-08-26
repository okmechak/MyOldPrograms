#include <stdio.h>

#include "dll.h"

int main(void)
{
	PNode dll = NULL;
	TData data;
	int i;
	
	//init dll
	dll = append(NULL, (TData) 0 );
	
	for(i = getFirst(dll)->data + 1; i < 10; i++)
		append(dll, (TData)i);		
	printList(dll);
	 
	printf("isFirst(0) = %i\n", isFirst(find(dll,(TData)0))); 
	printf("isFirst(1) = %i\n", isFirst(find(dll,(TData)1))); 
	printf("isFirst(NULL) = %i\n", isFirst(NULL)); 
	printf("isLast(9) = %i\n", isLast(find(dll,(TData)9)));   
	printf("isLast(8) = %i\n", isLast(find(dll,(TData)8)));   
	printf("isLast(NULL) = %i\n", isLast(NULL));   
	printf("getLast->data = %i\n", getLast(find(dll,(TData)0))->data);
	printf("getLast(NULL) = %i\n", getLast(NULL));
	printf("getFirst->data = %i\n", getFirst(find(dll,(TData)9))->data);
	printf("getFirst(NULL) = %i\n", getFirst(NULL));
	printf("getNum(9) = %i\n", getNum(find(dll,(TData)9)));
	printf("getNum(NULL) = %i\n", getNum(NULL));
	printf("Append data: %i\n", append(dll,(TData)11)->data);
	printList(dll);
	printf("Preppend data: %i\n",(dll = preppend(dll, (TData)(-1)))->data);
	printList(dll);
	printf("Preppend data: %i\n",(dll = preppend(dll, (TData)(-2)))->data);
	printList(dll);
	for(i = getFirst(dll)->data; i <= find(dll,(TData)9)->data; i++)
		printf("Find(%i)->data = %i\n", i, find(dll,(TData)i)->data);
	
	for(i = getFirst(dll)->data+5; i <= getLast(dll)->data; i++)
		printf("delete(%i) =%i \n",i, deleteNode(&dll, find(dll,(TData)i)));
	
	printf("dll = %i",dll);
	printList(dll);
	printf("deleteAll\n");
	deleteAll(&dll);
	printList(dll);
	
	dll = append(NULL, (TData) 0 );
	
	for(i = getFirst(dll)->data + 1; i < 10; i++)
		append(dll, (TData)i);		
	printList(dll);
	dll = find(dll,(TData)9);
	printf("swap\n");
	swap(find(dll,(TData)0), find(dll, (TData)1));
	printList(dll);
	return 0;
}