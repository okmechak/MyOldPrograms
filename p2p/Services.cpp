#include <stdlib.h> //free, malloc, ...
#include <stdio.h> //printf(), ...
#include <unistd.h> //sleep()
#include <string.h>

#include "Services.h"
#include "SPackeg.h"
#include "Network.h"
#include "DataFormat.h"
#include "DataBase.h"


//external from peer2peer.cpp
extern int connect(void);
extern int disconnect(int sock);
extern SServer ID;



void print_info(void)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	printf("%i - Info\n", INFO);
	printf("%i - EXIT\n", EXIT);
	printf("%i - SEND_FILE\n", SEND_FILE);
	printf("%i - SEND_MSG\n", SEND_MSG);
	printf("%i - LIST_CALL\n", LIST_CALL);
	
	printf("%s - host name\n", ID.host_name);
	printf("%s - server port\n", ID.server_port);
	
	print(get_list(), print_server_data);
}

void exit(void)
{
	printf("%s\n", __PRETTY_FUNCTION__);
}

void* send_file(void* ptr)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	//print file name
	printf("Send file name: %s\n", ((SServData *)ptr)->data);
	
	//initialize connection
	int sock = -1;
	sock = *result = init_connection(((SServData *)ptr)->server.host_name, ((SServData *)ptr)->server.server_port);
	if (*result == -1)
	{
		printf("Error create connection!\n");
		return (void *) result;
	}
	
	//***********************
	//protocol implementation
	
		// 1 - we send command type and length
		SHead msg;
		msg.cmnd = RECV_FILE;
		strncpy(msg.ID.host_name, select_by_num(get_list(), 2)->data.host_name, HOST_NAME_LEN);
		strncpy(msg.ID.server_port, select_by_num(get_list(), 2)->data.server_port, SERVER_PORT_LEN);
		
		//calculate file length
		FILE *fd = NULL;
		fd = fopen(((SServData *)ptr)->data, "r");
		if( fd == NULL)
		{
			printf("Error to open file\n");
			*result = -1;
			return (void *) result;
		}
		
		
		fseek(fd, 0L, SEEK_END);
		msg.datalen = ftell(fd) + sizeof(int);//add file name lenght
		fseek(fd, 0L, SEEK_SET);
		printf(" File size: %i\n", msg.datalen);		
		
		
		//*************************
		//send head of message
		*result = send_package(sock, (char *) &msg, sizeof( msg ), 0);
		if(*result != sizeof( msg ))
		{
			printf("Send length error!\n");
			return (void *) result;
		}
		
		//send length of file name
		int file_name_lenght = strlen(((SServData *)ptr)->data) + 1;
		*result = send_package(sock,(char *) &file_name_lenght, sizeof(int) , 0);
		if(*result != sizeof( int ))
		{
			printf("Send length error!\n");
			return (void *) result;
		}
		
		//send file name
		*result = send_package(sock,((SServData *)ptr)->data, file_name_lenght , 0);
		if(*result != file_name_lenght )
		{
			printf("Send file name error!\n");
			return (void *) result;
		}
		

		// 2 - open file and send data until end of file
			
		
		char buf[FILE_SEND_PACKAGE_SIZE];
		size_t size_file_r = 0;
		size_t size_send = 0;
		//int confirm = -1;
		//main loop of sending file
		printf("\n******Send File Loop******\n");
		do{
			printf("Services\n");
			//read binary data from file to buffer
			size_file_r = fread((void *)buf, sizeof(char), sizeof(buf)/sizeof(char), fd);
			
			//send data from buffer to socket
			size_send = *result = send_package(sock, buf, size_file_r, 0);
			if(*result <= 0 )
			{
				printf("Error sending file");
				return (void *) result;
			}
			
		} while(!feof(fd));
		printf("*****************************\n");
			
		//close file
		*result = fclose(fd);
		if(*result)
		{
			printf("Error to close file\n");
			return (void*) result;
		}
	
	//end of protocol implementation
	//***********************
	
	//close connection	
	close_socket(sock);
	
	//free allocated memory
	free(ptr);
	
	return (void *) result;
}

void* send_msg(void* ptr)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	//initialize connection
	int sock = -1;
	
	
	//***********************
	//protocol implementation
	SHead msg;
	msg.cmnd = RECV_FILE;
	msg.datalen = 0;//zero only for test program
	send_package(sock, (char *) &msg, sizeof( msg ), 0);
	//***********************
	
	//close connection
	//disconnect(sock);
	
	return (void *) result;
}

void* list_call(void* ptr)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	//initialize connection
	int sock = -1;
	sock = *result = init_connection(((SServData *)ptr)->server.host_name, ((SServData *)ptr)->server.server_port);
	if (*result == -1)
	{
		printf("Error create connection!\n");
		free(ptr);
		return (void *) result;
	}
	
	//***********************
	//protocol implementation
	
		// 1 - we send command type and length
		SHead msg;
		msg.cmnd = LIST_CALL_REQ;
		strncpy(msg.ID.host_name, select_by_num(get_list(), 2)->data.host_name, HOST_NAME_LEN);
		strncpy(msg.ID.server_port, select_by_num(get_list(), 2)->data.server_port, SERVER_PORT_LEN);
		
		//calculate list of elements length
		msg.datalen = num_of_elents(get_list()) * sizeof(Tdata);//add file name lenght
		printf(" File size: %i\n", msg.datalen);		
		
		 
		//*************************
		//send head of message
		*result = send_package(sock, (char *) &msg, sizeof( msg ), 0);
		if(*result != sizeof( msg ))
		{
			printf("Send length error!\n");
			close_socket(sock);
			free(ptr);
			return (void *) result;
		}
		
		// 2 - Send list elements
			
		
		//main loop of sending list elements
		char * send_buf = NULL;
		printf("\n******Send LIST Loop******\n");
		int i;
		for (i = 2; i <= msg.datalen/sizeof(Tdata) + 1; i++ )
		{
			printf("Services\n");
			
			//send data from buffer to socket
			send_buf = (char *) select_by_num(get_list(), i);
			print_server_data(*(Tdata *)send_buf);
			*result = send_package(sock, send_buf, sizeof(Tdata), 0);
			if(*result <= 0 )
			{
				printf("Error sending list element");
				close_socket(sock);
				free(ptr);
				return (void *) result;				
			}
		}
		printf("*****************************\n");
			
	
	//end of protocol implementation
	//***********************
	
	//close connection	
	close_socket(sock);
	free(ptr);
	
	return (void *) result;
}