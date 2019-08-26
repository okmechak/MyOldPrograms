#include <pthread.h>//threads
#include <stdio.h>//printf()
#include <stdlib.h>//free()

#include "Framework.h"
#include "Serves.h"
#include "Services.h"
#include "DataFormat.h"

int route(int cmnd, int sock, void* data)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result = 0;
	void* (*command_thread_fcn)(void * ptr) = NULL;
	
	//route command to specific action
	switch(cmnd)
	{
		//common
		case INFO:
			print_info();
			break;
		case EXIT:
			exit();
			break;
		//services	
		case SEND_FILE:
			command_thread_fcn = &send_file;
			break;		
		case SEND_MSG:
			command_thread_fcn = &send_msg;
			break;
		case LIST_CALL:
		    command_thread_fcn = &list_call;
			break;
		//serves	
		case RECV_FILE:
			command_thread_fcn = &recv_file;
			break;		
		case RECV_MSG:
			command_thread_fcn = &recv_msg;
			break;
		case LIST_CALL_REQ:
		    command_thread_fcn = &list_call_req;
			break;
		default:
			printf("%i : unknown command\n", cmnd);
	}
	
	//create thread for services commands
	if(command_thread_fcn)
	{
		pthread_t service_thread;
		
		//creates thread for specific services
		if (data != NULL)
			result = pthread_create( &service_thread, NULL, command_thread_fcn, data );
		else
			result = pthread_create( &service_thread, NULL, command_thread_fcn, (void *) &sock );
		
		if( result )
		{
			perror("Listen Thread");
			return result;          
		}
		
		//waits until services ended
		//in future it will not wait for it
		//because in that way there isn't benefit from 
		//threads
		
		int wait_to_end_of_thread = 0;
		if(wait_to_end_of_thread)
		{
			void *pdata = data;
			result = pthread_join(service_thread, &pdata);
			if( result )
			{
				perror("Join Thread");
				return result;
			}
			
			//equate returning value from service to thread
			result = *(int *)pdata;
			
			//free memory that was allocated in 
			//service function to return result
			free(pdata);
		}
		else
			pthread_detach(service_thread);
	}		
	
	return result;
}