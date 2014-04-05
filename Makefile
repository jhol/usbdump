
BIN=usbdump
SOURCE=usbdump.c

all: $(BIN)

clean:
	$(RM) *.o $(BIN)

%.o : %.c
	$(CC) -c -o $@ $<

$(BIN): $(patsubst %.c,%.o,$(SOURCE))
	$(CC) -o $@ $^

.PHONY : all clean
