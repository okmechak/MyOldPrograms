#include <stdio.h>
#include <string.h>

#define BUF_SIZE 3

int main(int argc, const char* argv[]){

	if( argc != 3 || BUF_SIZE <= strlen(argv[2])){
		printf("wrong number of inputs or to long input word!");
		return -1;
	}
	
	FILE* desc = NULL;
	char buf[BUF_SIZE], *str = NULL;
	const char *word = argv[2];
	int val = 0;
	int i = 1;
	int word_len = strlen(word);
	
	if( (desc = fopen(argv[1],"r")) == NULL ) 
		return -1;
	
	while( !feof(desc) ){
		if( strchr(buf,'\n')!=NULL || i )
			str = fgets(buf, BUF_SIZE, desc);
		else{
			strcpy(buf, buf + BUF_SIZE - word_len);
			str = fgets(buf + word_len-1, BUF_SIZE - word_len + 1, desc);
		}
		str = buf;
		while(str != NULL){
			str = strstr(str, word);
			if(str!=NULL){
				str += word_len;
				val++;			
			}			
		}
	i=0;
	}
	fclose(desc);
	printf("\n number - %d",val);
	
	return 0;
}