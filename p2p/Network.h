#include <stdlib.h> 
#include <sys/socket.h>//accept()
#include <sys/select.h>//FD_ZERO, 
#include <sys/types.h>
#include <netdb.h>
#include <unistd.h>

#ifndef NETWORK

#define NETWORK


int init_connection(const char* host_name, char const* port);
int close_connection(void);

int init_server(const char *server_port);
int shutdown_server(void);

int send_package(int sock, const char* buf, size_t size, int flags);
int recv_package(int sock, char* buf, size_t size, int flags);
int recv_package_guarant(int sock, char* buf, size_t size, int flags);

void close_socket(int sock);

#endif