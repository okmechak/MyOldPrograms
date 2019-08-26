#include <pthread.h>//threads
#include <stdio.h>//printf()
#include <stdlib.h>//free()

#include "DataFormat.h"
#include "Terminal.h"
#include "Listener.h"
#include "Network.h"
#include "DataBase.h"

//program identifier
SServer ID;

//server list

int start(void)
{
	int result = 0;
	//initialization section
	
	//init server addresses
	printf("Enter server port number: ");
	scanf("%s",ID.server_port);
	printf("\n");
	gethostname(ID.host_name, HOST_NAME_LEN);
	
	//initialization of linked list
	linked_list_init();
	//add current server to list
	//second element of linked list
	//always is a ID of current program
	insert(get_list(), ID);
	
	
	//**********************************
	//start listen loop
	pthread_t thread;
	result = pthread_create( &thread, NULL, &listen, (void *) ID.server_port );
	if( result )
	{
		perror("Listen Thread");
		return result;
	}
	pthread_detach(thread);
	//**********************************
	
	
	
	
	 
	//**********************************
	//creates terminal thread
	//main user thread
	pthread_t terminal_thread;
	void *pdata = NULL;
	result = pthread_create( &terminal_thread, NULL, &terminal, pdata );
	if( result )
	{
		perror("Terminal Thread");
		return result;
	}
	
	 
	result = pthread_join(terminal_thread, &pdata);
	if( result )
	{
		perror("Terminal Thread");
		return result;
	}
	
	//equate returning value from service to thread
	result = *(int *)pdata;
	free(pdata);
	//**********************************
	
	
	
	
	
	//shutdown server
	result = shutdown_server();
	
	return result;
}