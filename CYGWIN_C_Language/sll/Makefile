CC=gcc
CFLAGS=-c
LDFLAGS= 
SOURCES=main.c sll.c data.c
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=sll

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@