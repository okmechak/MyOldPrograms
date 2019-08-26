#include <stdio.h>
#include <string.h>
#include "list_functions.h"

#define BUF_SIZE 10

void parse_string(char* string);

int main(int argc, const char *argv[]){
    
    if(argv[1]==NULL || argc != 2){//Check for correct inputs
        printf("\nError! Enter file name\n");
        return -1;
    }
    
    FILE* desc = NULL;
    if( (desc = fopen(argv[1],"r")) == NULL){//Check for correct file opening
        printf("\nError! Can't open file - %s\n",argv[1]);
        return -1;
    }
    else{
        printf("\nFile - %s, successfully opened! descriptor - %d\n", argv[1],desc);
    }
    
    char *str = NULL;
    char buf[BUF_SIZE],buf2[BUF_SIZE];
    char *pos = NULL;
    int len = 0;
    buf[0] = '\0';
    while(!feof(desc)){
        len = strlen(buf);
        if(len == 0 || buf[len - 1]=='\n' || buf[len - 1]==' ')
            fgets(buf,BUF_SIZE,desc);
        else{
            if ((pos = strrchr(buf,' ')) == NULL){
                printf("\n to litle buffer!!\n");
                return -1;
            }
            pos++;
            len = strlen(pos);
            stpcpy(buf, pos);
            fgets(buf + len, BUF_SIZE - len , desc);
        }
        stpcpy(buf2,buf);
        len = strlen(buf2);
        if(!(len == 0 || buf2[len - 1]=='\n' || buf2[len - 1]==' '))
            *(strrchr(buf2,' ')+1)='\0';
        printf("%s-",buf2);
    }
    
    if(fclose(desc)==EOF){//Check for correct close of file
        printf("'\nError! Can't close file\n");
        return -1;
    }
    else printf("\nFile - %s, successfully closed!\n",argv[1]);
    
    return 0;
}