CC=gcc
CFLAGS=-Wall -Werror -std=c99 -pedantic
EXEC=profile

all: profiler 

profiler: main.o profiler.o
	$(CC) main.o profiler.o -o profile

main.o: src/Main.c
	$(CC) -c src/Main.c -o main.o

profiler.o: src/Profiler.c src/Profiler.h
	$(CC) -c src/Profiler.c -o profiler.o

clean:
	\rm -f $(EXEC) *.o *~