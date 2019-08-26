#include <stdio.h>
#include <stdlib.h>

char *file_dir, *string, buf[255], wd;
int main(){
	FILE *desc=NULL;
	desc = fopen("text.txt","r");
	while((wd = fgetc(desc)) != EOF)
		printf("%c",wd);
	fclose(desc);
	return 0;
}