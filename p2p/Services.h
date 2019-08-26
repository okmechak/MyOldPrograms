#include "DataFormat.h"

#define SERV_DATA_LEN 100

struct SServData
{
	Tdata server;
	char data[SERV_DATA_LEN];
};

//services of peer2peer program
void print_info(void);
void exit(void);
void* send_file(void* ptr);
void* send_msg(void* ptr);
void* list_call(void* ptr);