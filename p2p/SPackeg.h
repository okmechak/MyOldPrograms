#ifndef Packeg

#define Packeg

#define FILE_SEND_PACKAGE_SIZE 30

#include "DataFormat.h"
//protocol commands

//universal structure for all messages
struct SHead
{
	int cmnd;
	SServer ID;
	int datalen;
};

#endif