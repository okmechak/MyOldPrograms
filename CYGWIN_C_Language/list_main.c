#include <stdio.h>
#include <stdlib.h>
#include "list_functions.h"
udata_t ar[] = {1,2,3,4,5};
const int n = 5;

int main(){
	dlist_t *list = NULL;
	list = creat_list(ar,n);
	print_list(list);
	list = rot_left_list(list);
	print_list(list);
	return 0;
}