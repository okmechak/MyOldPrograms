#include <string.h>
#include <stdio.h>
#include "list_functions.h"
#include "type_def.h"

int main(const int argc, const char **argv){
	FILE *desc = NULL;
	fpos_t position;
	if((desc = fopen(argv[1],"r"))==NULL){
		printf("\nCan not open file %s",argv[1]);
		return -1;
	}
	
	fgetpos(desc, &position);
	printf("%d",position);
	
	if(fclose(desc))
		printf("\nCannot close file %s",argv[1]);
	return 0;
}