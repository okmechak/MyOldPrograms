#include <stdlib.h> //free, malloc, ...
#include <stdio.h> //printf(), ...
#include <unistd.h> //sleep()
#include <string.h>

#include "Serves.h"
#include "Network.h"
#include "DataFormat.h"
#include "SPackeg.h"
#include "DataBase.h"

void* recv_file(void* sock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	//***********************
	//protocol implementation
	
		//1 - receives message
		SHead msg;
		*result = recv_package(*(int *)sock, (char *) &msg, sizeof( msg ), 0);
		if (*result != sizeof( msg ))
		{
			printf("Receive error of data length!\n");
			return (void *) result;
		}
		printf("                 cmnd: %i\n", msg.cmnd);
		printf("   received host name: %s\n", msg.ID.host_name);
		printf(" received server port: %s\n", msg.ID.server_port);
		printf("          data length: %i\n", msg.datalen);
		
		//add received data to server list
		if(find(get_list(), msg.ID, compare_server_list)== NULL)
				insert(get_list(), msg.ID);
			
		//*************************
		//receive file name	
		int file_name_lenght = 0;
		
		*result = recv_package(*(int *)sock, (char *) &file_name_lenght, sizeof( int ), 0);
		if (*result != sizeof( int ))
		{
			printf("Receive error of file name length!\n");
			return (void *) result;
		}	
		printf("File name lenght: %i\n", file_name_lenght);
		
		char file_name[100];
		*result = recv_package(*(int *)sock, file_name, file_name_lenght, 0);
		if (*result != file_name_lenght )
		{
			printf("Receive error of file name!\n");
			return (void *) result;
		}
		printf("File name lenght: %s\n", file_name);
		
		//*************************
		
		// 2 - create/open/close file and receive data until end
		FILE *fd = NULL;
		fd = fopen(strcat(file_name, "_1.txt"), "w+");
		if( fd == NULL)
		{
			printf("Error to open file\n");
			perror("file error");
			*result = -1;
			return (void *) result;
		}
		
		char buf[FILE_SEND_PACKAGE_SIZE];
		size_t size_file_w = 0;
		size_t size_recv = 0;
		
		//main loop of sending file
		printf("\n*****Receive file loop******\n");
		do{
			printf("Server\n");
			//receive data from socket to buffer
			size_recv = *result = recv_package(*(int *)sock, buf, FILE_SEND_PACKAGE_SIZE, 0);
			if(*result == -1)
			{
				fclose(fd);
				printf("Error receiving file\n");
				return (void *) result;
			}

			//write binary data from buffer to file
			size_file_w += fwrite((void *)buf, sizeof(char), size_recv, fd);
			printf("accumulate size: %i\n",size_file_w);
			printf("  received size: %i\n",size_recv);
			
		} while( size_file_w < msg.datalen );
		printf("*****************************\n");
		//close file
		*result = fclose(fd);
		if(*result)
		{
			printf("Error to close file\n");
			return (void*) result;
		}
		
		//close connection
		close_socket(*(int *)sock);
	return (void *) result;
}

void* recv_msg(void* sock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
	
	return (void *) result;
}

void* list_call_req(void* sock)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int* result = (int *) malloc(sizeof(int));
		//1 - receives message
		SHead msg;
		*result = recv_package(*(int *)sock, (char *) &msg, sizeof( msg ), 0);
		if (*result != sizeof( msg ))
		{
			printf("Receive error of data length!\n");
			close_socket(*(int *)sock);
			return (void *) result;
		}
		printf("                 cmnd: %i\n", msg.cmnd);
		printf("   received host name: %s\n", msg.ID.host_name);
		printf(" received server port: %s\n", msg.ID.server_port);
		printf("          data length: %i\n", msg.datalen);
		
		
		printf("\n*****Receive list loop******\n");
		int size_recv = 0;
		Tdata element;
		do{
			printf("Server\n");
			//receive data from socket to buffer
			size_recv += *result = recv_package(*(int *)sock, (char *) &element, sizeof(Tdata), 0);
			if(*result == -1)
			{
				
				printf("Error receiving file\n");
				return (void *) result;
			}

			//write list element to server list
			if(find(get_list(), element, compare_server_list)== NULL)
				insert(get_list(), element);
			
		} while( size_recv < msg.datalen );
		printf("*****************************\n");
		close_socket(*(int *)sock);
	return (void *) result;
}