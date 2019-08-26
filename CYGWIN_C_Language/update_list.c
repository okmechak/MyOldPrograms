#include <stdlib.h>
#include <string.h>
#include "list_functions.c"

int compare(udata_t a, udata_t b);
void print_elem(udata_t a);

int main(void){
    dlist_t* list = NULL, *list1=NULL, *list2=NULL;
    udata_t elem = {"aaaa",0};

    list = add_element(NULL, elem);
        
        elem.str = "cccc";
        elem.count = 1;
    list1 = add_element(list,elem);
        
        elem.str = "bbbb";
        elem.count = 2;
    list2 = add_element(list,elem);
        
        elem.str = "dddd";
        elem.count = 3;
    add_element(list,elem);
        
        elem.str = "ffff";
        elem.count = 4;
    add_element(list,elem);
        
        elem.str = "eeee";
        elem.count = 5;
    list2=add_element(list,elem);
   
    print_list(list, *print_elem);
    sort_list(list, *compare);
    print_list(find_first(list), *print_elem);
    
    return 0;
}




