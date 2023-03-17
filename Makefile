# Makefile
CC = gcc
CFLAGS = -Wall

all: test_multiply

multiply.o: multiply.c multiply.h
	$(CC) $(CFLAGS) -c multiply.c

test_multiply.o: test_multiply.c multiply.h
	$(CC) $(CFLAGS) -c test_multiply.c

test_multiply: test_multiply.o multiply.o
	$(CC) $(CFLAGS) -o test_multiply test_multiply.o multiply.o

.PHONY: clean run

clean:
	rm -f *.o test_multiply

run: test_multiply
	./test_multiply
