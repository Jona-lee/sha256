CC = gcc
STRIP = strip

CFLAGS =
LDFLAGS = -lssl -lcrypto
LIBS =

OBJS = sha256.o 
.SUFFIXES: .c

BIN= sha256

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

all: ${BIN}

clean:
	rm -f *.o
	rm -f ${BIN}

${BIN}: $(OBJS)
	$(CC) $^ $(CFLAGS) $(LDFLAGS) $(LIBS) -o $@
	$(STRIP) $@

