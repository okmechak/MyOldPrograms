CC=gcc
CFLAGS=-c
LDFLAGS= 
SOURCES=main.c dll.c data.c
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=dll

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@