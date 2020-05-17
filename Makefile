# Build Executable
SHELL=/bin/bash

CC = gcc

ejercicio.1:
	${CC} -o ./build/ejercicio1 -fopenmp ./ejercicio1/ejercicio1.c

clean:
	$(RM) ./build/ejercicio*

runE1:
	./build/ejercicio1
