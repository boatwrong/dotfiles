CC=gcc
BINS = main libmyfunc.so new_main 
CFLAGS= -Wall

all: $(BINS)

libmyfunc.o: libmyfunc.c mylib.h
	$(CC) $(CFLAGS) -c libmyfunc.c

libmyfunc.so: libmyfunc.c mylib.h
	$(CC) $(CFLAGS) -fPIC -shared -o $@ libmyfunc.c -lc

main: main.c libmyfunc.o
	$(CC) $(CFLAGS) -o $@ $^

new_main: main.c
	$(CC) $(CFLAGS) -o $@ $^ -L. -lmyfunc

clean: 
	rm *.o $(BINS)
