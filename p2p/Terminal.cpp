#include <stdio.h>  //printf(), scanf()
#include <stdlib.h> //free(), malloc()
#include <string.h>

#include "Framework.h"
#include "Services.h"
#include "DataBase.h"


static int getcommand(void);
static SServData* data_compouse(int cmnd);


void* terminal(void* ptr)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc( sizeof(int) );
	int cmnd = -1;
	
	print_info();
	
	//main loop of terminal
	while( (cmnd = getcommand()) != 1)
	{ 
		*result = route(cmnd, 0, (void *)data_compouse(cmnd));
		printf("\nres: %i\n", *result);
	} 
	
	return (void *) result;
}

static int getcommand(void)
{
	int cmnd = -1;
	printf("Enter cmnd: ");
	scanf("%i", &cmnd);
	printf("\n");
	return  cmnd;    
}


//compose data to terminal services
static SServData* data_compouse(int cmnd)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	SServData* ServData = NULL;
	
	//specific data is needed only for send file, msg or list call
	if (!(cmnd == SEND_FILE || cmnd == SEND_MSG || cmnd == LIST_CALL))
		return ServData;
	
	//allocate memory to send it specific service
	ServData = (SServData *) malloc( sizeof(SServData) );
	if (ServData == NULL)
	{
		printf("Can't allocate memory to ServData\n");
		return NULL;
	}
	//*******************************************
	//selecting server address
	printf("Select server menu\n Press:\n");
	printf("        1 - select from list\n");
	printf("        2 - enter manually\n");
	printf("        3 - to yourself\n");    
	int i = 1;
	switch(getcommand())
	{
		
		case 1:
			//select from list
			//print list
			print(get_list(), print_server_data);
			
			//get number of some entity in list
			i = getcommand();
			
			//copy this data from list to allocated memory
			strncpy(ServData->server.host_name, select_by_num(get_list(), i)->data.host_name, HOST_NAME_LEN);
			strncpy(ServData->server.server_port, select_by_num(get_list(), i)->data.server_port, SERVER_PORT_LEN);
			break;
		case 2:
			//manual enter server address
			printf("Enter host name: ");
			scanf("%s", ServData->server.host_name);
			printf("\n");
			printf("Enter server port: ");
			scanf("%s", ServData->server.server_port);
			printf("\n");
			
			//if server address is unique then add it to server list
			if(find(get_list(), ServData->server, compare_server_list)== NULL)
				insert(get_list(), ServData->server);
			break;
		case 3:
		
			//current server list always haw number two
			i = 2;
			strncpy(ServData->server.host_name, select_by_num(get_list(), i)->data.host_name, HOST_NAME_LEN);
			strncpy(ServData->server.server_port, select_by_num(get_list(), i)->data.server_port, SERVER_PORT_LEN);
		default:
			break;
	}
	
	printf("\nSelected Server\n");
	print_server_data(ServData->server);
	
	//*******************************************
	//entering specific data for services
	switch(cmnd)
	{
		case SEND_FILE:
			printf("Enter file name: ");
			scanf("%s", ServData->data);
			printf("\n");
			break;
		case SEND_MSG:
			printf("Compose message: ");
			scanf("%s", ServData->data);
			printf("\n");
			break;
		case LIST_CALL:
			break;
		default:
			break;
	}
	
	//return address of allocated memory
	return ServData;
}