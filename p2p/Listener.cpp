#include <stdio.h>
#include <pthread.h>//threads

#include "Framework.h"
#include "Network.h"



static int getcommand(const int sock);
static int multiplexed_server_loop(int listensock);
static int thread_server_loop(int listensock);
static void* request_thread(void *psock);



void* listen(void* server_port)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result = 0;
	
	//initialize server socket
	int listensock = result = init_server((char *) server_port);
	if( result == -1)
	{
		printf("server initialization error\n");
		return NULL;
	}
	
	//to change server type to multiplex need
	//to change protocol implementation
	//at this time server type must be thread - 1
	int server_type = 1;//!!!!!!!!!!!!!!!!!!!!!!!
	switch(server_type)
	{
		case 0:
			result = multiplexed_server_loop(listensock);
			break;
		case 1:
		    result = thread_server_loop(listensock);
			break;
		default:
			printf("Wrong type of server type!\n");
			printf("must be 0 - multiplexed server!\n");
			printf("must be 1 - thread server!\n");
			break;
	}
	return NULL;
}

//need modifications!!!
static int multiplexed_server_loop(int listensock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result = 0;
	fd_set connections_set;

	FD_ZERO(&connections_set);
	FD_SET(listensock, &connections_set);
	
	fd_set testset;
	while (1) 
	{
		testset = connections_set;
		
		printf("connection select .... \n");
		result = select(FD_SETSIZE, &testset, NULL, NULL, NULL);
		if (result < 1) {
			perror("connection listen");
			return result;
		}
		
		for (int x = 0; x < FD_SETSIZE; x++) 
		{
			int sock = x;
			if (FD_ISSET(sock, &testset)) 
			{
				if(sock == listensock)
				{
					printf("server accept\n");
					sock = accept(listensock, NULL, NULL);
				}
				//*************************
				request_thread((void *) &sock);
				//*************************
			} 	
		}
	}
	return result;
}


static int thread_server_loop(int listensock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result = 0;
	
	//main listen loop
	while (1) 
	{
		//waits for connection
		printf("connection accept .... \n");
		int sock = accept(listensock, NULL, NULL);
		
		 
		//*************************
		//data to be passed to thread request
		pthread_t thread;
		int data = sock;
		
		//creates thread for specific services
		result = pthread_create( &thread, NULL, &request_thread, (void *) &data );
		if( result )
		{
			perror("Request Thread");
			return result;
		}
		
		//wait to end of thread
		//using pthread_join
		//because we gives to thread local variable of function!!!
		int wait_to_end_of_thread = 0;
		if(wait_to_end_of_thread)
		{
			void* pdata = NULL;
			result = pthread_join(thread, &pdata);
			if( result )
			{
				perror("Request Thread");
				return result;
			}
			result = *(int *)pdata;
			free(pdata);
			printf("%i :result of server loop\n", result);
		}
		else
			pthread_detach(thread);
		//*************************
	}
	return result;
}


static void* request_thread(void *psock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	*result = route( getcommand(*(int *)psock), *(int *)psock, NULL);
	
	return (void *) result;
}


static int getcommand(const int sock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int cmnd = -1;
	
	//receives specific command from network
	//MSG_PEEK - used for only watch on data from 
	//network buffer, but don't pull out from it!!!
	recv_package(sock, (char *) &cmnd, sizeof(cmnd), MSG_PEEK);
	return  cmnd;
}

