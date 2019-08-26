#ifndef DATABASE
#define DATABASE

#include "double_linked_list.h"


void linked_list_init(void);
void print_server_data(Tdata data);
int compare_server_list(Tdata data1, Tdata data2);
node* get_list(void);

#endif