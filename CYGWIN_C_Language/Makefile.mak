CC=gcc
SOURCES=list2file.c list_functions.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=l2f


all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@
	
.c.o:
	$(CC) -c $< -o $@

clean:
	rm -rf $(OBJECTS) $(EXECUTABLE)