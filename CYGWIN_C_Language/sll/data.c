#include <stdlib.h>
#include <stdio.h>
#include "data.h"

int printData(PData data)
{
	if(data==NULL){
		printf("NULL pointer in data display\n");
		return ;
	}
	printf("%i", *data);
	return 0;
}

int compare(PData a, PData b)
{
	if( a == NULL || b == NULL)
		return -1;
	else 
		return *a == *b;
}

int equate(PData left, PData right)
{
	if( left == NULL || right == NULL)
		return -1;
	*left = *right;
	return 0;
}