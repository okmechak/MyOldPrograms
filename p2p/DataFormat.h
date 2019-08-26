#ifndef DATAFORMAT
#define DATAFORMAT

#define HOST_NAME_LEN 20
#define SERVER_PORT_LEN 6

#define DEFAULT_PORT "1991"

enum {INFO, EXIT, SEND_FILE, RECV_FILE, SEND_MSG, RECV_MSG ,LIST_CALL, LIST_CALL_REQ};

struct SServer
{
	char host_name[HOST_NAME_LEN];
	char server_port[SERVER_PORT_LEN];
};

typedef SServer Tdata;

#endif