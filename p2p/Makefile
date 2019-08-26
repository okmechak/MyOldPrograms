CC=g++
CFLAGS=-c -Wall
LDFLAGS= -pthread
SOURCES=main.cpp PeerTwoPeer.cpp Services.cpp DataBase.cpp double_linked_list.cpp Network.cpp Serves.cpp Terminal.cpp Listener.cpp Framework.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=p2p

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@