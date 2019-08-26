#include <string.h>
#include <stdlib.h> //free, malloc, ...
#include <stdio.h>//perror()

#include "Network.h"


//**********************************
//Local libraries
//serves library includes functions
//to serve call request


#include "SPackeg.h"

int send_package(int sock,const char* buf, size_t size, int flags)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	return send(sock, buf, size, flags);
}

int recv_package(int sock, char* buf, size_t size, int flags)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	return recv(sock, buf, size, flags);
}

int recv_package_guarant(int sock, char* buf, size_t size, int flags)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	
	ssize_t rec = 0;
	do {
		int result = recv(sock, &buf[rec], size - rec, flags);
		if (result == -1)
		{
			// Handle error ...
			return -1;
		}
		else if (result == 0) 
		{
			continue;
		}
		else 
		{
			rec += result;
			printf("rec size: %i\n", rec);
		}
		
	}
	while (rec < size);
	
	return rec;
}

void close_socket(int sock)
{
	close(sock);
}

int init_connection(const char* host_name, char const* port)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	
	int sock;
	int result;
	struct addrinfo hints, *servinfo, *p;
	memset(&hints, 0, sizeof hints);
	hints.ai_family = AF_INET; // use AF_INET6 to force IPv6
	hints.ai_socktype = SOCK_STREAM;
	
	result = getaddrinfo(host_name, port, &hints, &servinfo);
	if ( result ) 
	{
		fprintf(stderr, "getaddrinfo: %s\n", gai_strerror(result));
		return -1;
	}
	
	// loop through all the results and connect to the first we can
	for(p = servinfo; p != NULL; p = p->ai_next) 
	{
		if ((sock = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) == -1) 
		{
			perror("socket");
			continue;
		}
		if (connect(sock, p->ai_addr, p->ai_addrlen) == -1) 
		{
			close(sock);
			perror("connect");
			continue;
		}
		break; // if we get here, we must have connected successfully
	}
	
	if (p == NULL) 
	{
		// looped off the end of the list with no connection
		fprintf(stderr, "failed to connect\n");
		return -1;
	}
	
	freeaddrinfo(servinfo); // all done with this structure
	
	
	//***************
	//print information
	printf("Connection successful!\n");
	printf("   host name: %s\n", host_name);
	printf(" server port: %s\n", port);
	printf("        sock: %i\n", sock);
	//***************
	
	return sock;
}

int init_server(const char *server_port)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result = -1;
	
	//struct sockaddr_storage their_addr;
	//socklen_t addr_size;
	struct addrinfo hints, *res;
	int listensock;
	char host_name[20];
	
	//get host name
	gethostname(host_name, 20);
	
	//configure connection type
	memset(&hints, 0, sizeof hints);
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE; 
	
	result = getaddrinfo(host_name, server_port, &hints, &res);
	if ( result ) 
	{
		fprintf(stderr, "getaddrinfo: %s\n", gai_strerror(result));
		return -1;
	}
	
	listensock = result = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
	if(result < 0)
	{
		perror("socket");
		return -1;
	}
	
	//don't now why is it
	
	int val = 1;
	result = setsockopt(listensock, SOL_SOCKET, SO_REUSEADDR, &val, sizeof(val));
	if(result)
	{
		perror("setsockopt");
		return -1;
	}
	
	
	result = bind(listensock, res->ai_addr, res->ai_addrlen);
	if(result)
	{
		perror("bind");
		return -1;
	}
	
	result = listen(listensock, 10);
	if(result)
	{
		perror("listen");
		return -1;
	}
	
	//***************
	//print information
	printf("Server start-up successful!\n");
	printf("   host name: %s\n", host_name);
	printf(" server port: %s\n", server_port);
	printf("        sock: %i\n", listensock);
	//***************
	
	return listensock;
}

int shutdown_server(void)
{
	printf("%s\n", __PRETTY_FUNCTION__);
	int result =0;
	
	return result;
}