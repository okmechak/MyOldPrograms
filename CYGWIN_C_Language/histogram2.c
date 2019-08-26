#include <ctype.h>
#include <stdlib.h>
#include "list_functions.h"
#include "type_def.h"

#define BUF_SIZE 15


int main(int argc, const char *argv[]){
	char hello[] = "moto";
	if (sizeof(hello)==strlen(hello))
		printf("sdfdsf");
	int i;
	int upcase = 0, num = 0, charac = 0, sort = 0, sorttype = 0;
	
	if(argv[argc - 1]==NULL || argc < 2){
        printf("\nError! Enter file name\n");
        return -1;
    }
	
    for(i = 1; i < argc; i++){
		if(!strcmp(argv[i],"-u"))
			upcase = 1;
		else if(!strcmp(argv[i],"-c"))
			charac = 1;
		else if(!strcmp(argv[i],"-s"))
			sort = 1;
		else if(!strcmp(argv[i],"-f")){
			sort = 1;
			sorttype = 1;
		}else if (!strcmp(argv[i],"-n"))
			num = 1;
	}
    
	if(!strcmp(argv[1],"-help")){
			printf("\nUsage: hist [OPTIONS]... [FILE]\n Hist is used for build histogram of words from text file");
			printf("\n -n         Include numbers to part of word");
			printf("\n -u         Ignore upper case");
			printf("\n -c         Include \"_\" to word");
			printf("\n -s         Sort words by alphabet");
			printf("\n -f         Sort words by frequency");
			printf("\n -help      Show this help information");
			charac = 1;
			return 0;
	}
	
    
    FILE* desc = NULL;
    if( (desc = fopen(argv[argc - 1],"r")) == NULL){
        printf("\nError! Can't open file - %s\n",argv[argc - 1]);
        return -1;
    }
    
    char buf[BUF_SIZE];
    char *pos = buf, ch;
    int len = 0, trig = 0;
    strcpy(buf,"none");
    dlist_t *list = NULL, *srch=NULL;
    udata_t elem;
    
    
    while(ch != EOF){
		ch = fgetc(desc);
        if(isalpha(ch) ||  (charac && ch == '_') || (num && isdigit(ch))){
			if(upcase)
				ch = tolower(ch);
            *pos = ch;
            pos++;
            trig = 1;
        }
        else{
            *pos = '\0';
            pos = buf;
            if(trig){ 
                strncpy(elem.str, buf, BUF_STR_SIZE);
                elem.count = 1;
                if ((srch = search_element(list, elem, *compare_str))== NULL)
                    list = add_element(list, elem);
                else
                    srch->data.count++;
                list = find_first(list);
            }
            trig = 0;
        }
    }
    
    if(sort)
		sort_list(list , sorttype ? *compare_count : *compare_str);
	
    print_list(find_first(list),*print_elem);
    
    if(fclose(desc)==EOF){
        printf("'\nError! Can't close file\n");
        return -1;
    }
    
    return 0;
}
