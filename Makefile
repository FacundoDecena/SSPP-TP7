# Build Executable
SHELL=/bin/bash

CC = gcc

ejercicio.1:
	${CC} -o ./build/ejercicio1 -fopenmp ./ejercicio1/ejercicio1.c

ejercicio.2:
	${CC} -o ./build/ejercicio2a -fopenmp ./ejercicio2/ejercicio2a.c
	${CC} -o ./build/ejercicio2b -fopenmp ./ejercicio2/ejercicio2b.c

clean:
	$(RM) ./build/ejercicio*

runE1:
	./build/ejercicio1

runE2:
	./build/ejercicio2a

	./build/ejercicio2b