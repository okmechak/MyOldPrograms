#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "list_functions.h"

int main(){
	char *file, *string, wd;
	int i = 0;
	int str_len = 0;
	FILE *desc = NULL;
	dlist_t *list = NULL;
	udata_t *str;
	file = "text.exe";
	str = "jjj";
	str_len = strlen(str)-1;
	printf("%d",str_len);
	
	desc = fopen("text.txt","r");
	
	while((wd = fgetc(desc)) != EOF)
		if(str_len >= i){
			list = add_element(list ,wd);
			list = find_first(list);
			print_list(list);
			i++;
		}
		else
		{
			list = rot_left_list(list);
			find_last(list)->data = wd;
			if(compare_list2array(list, str))
				printf("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! at position %d",i-1);
			print_list(list);
			i++;
		}
	fclose(desc);
	print_list(find_first(list));
	return 0;
}