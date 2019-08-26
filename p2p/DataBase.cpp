#include <stdio.h>
#include <string.h>

#include "DataBase.h"
#include "DataFormat.h"
#include "Network.h"   

node* server_list = NULL;

int compare_server_list(Tdata data1, Tdata data2)
{
	//compare two strings of server field in Tdata
	//1 - equal
	//0 - different
	if(strcmp(data1.host_name , data2.host_name) || strcmp(data1.server_port, data2.host_name))
		return 0;
	else
		return 1;
}

void print_server_data(Tdata data)
{
	printf("    host name: %s\n",data.host_name);
	printf("  server port: %s\n",data.server_port);
}


void linked_list_init(void)
{
	server_list = (node *) malloc( sizeof(node) );
	server_list->prev = NULL;
	server_list->next = NULL;
}

node * get_list(void)
{
	return server_list;
}