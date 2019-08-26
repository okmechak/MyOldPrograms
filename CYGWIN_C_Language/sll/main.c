#include <stdio.h>

#include "sll.h"

int main(void)
{
	PNode sll = append(NULL, (TData) 0 );
	TData data;
	int i;
	
	printf("append\n");
	for(i = 1; i < 10; i++)
		append(sll,(TData)i);
	print(sll);
	
	printf("swap\n");
	i=swap(&sll,find(sll,9),find(sll,0));
	printf("%i\n",i);
    print(sll);
	
	return 0;
}