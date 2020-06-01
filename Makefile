# Build Executable
SHELL=/bin/bash

CC = gcc

ejercicio.1:
	${CC} -o ./build/ejercicio1 -fopenmp ./ejercicio1/ejercicio1.c

ejercicio.2:
	${CC} -o ./build/ejercicio2a -fopenmp ./ejercicio2/ejercicio2a.c
	${CC} -o ./build/ejercicio2b -fopenmp ./ejercicio2/ejercicio2b.c

ejercicio.5:
	${CC} -o ./build/ejercicio5 -fopenmp ./ejercicio5/ejercicio5.c

ejercicio.6:
	${CC} -o ./build/ejercicio6 -fopenmp ./ejercicio6/ejercicio6.c

ejercicio.7:
	${CC} -o ./build/ejercicio7a -fopenmp ./ejercicio7/bucle1.c

	${CC} -o ./build/ejercicio7b -fopenmp ./ejercicio7/bucle2.c

ejercicio.8:
	${CC} -o ./build/ejercicio8Secuencial -fopenmp ./ejercicio8/ejercicio8Secuencial.c -lm
	${CC} -O1 -o ./build/ejercicio8Paralelo2 -fopenmp ./ejercicio8/ejercicio8Paralelo2.c -lm
	${CC} -O1 -o ./build/ejercicio8Paralelo -fopenmp ./ejercicio8/ejercicio8Paralelo.c -lm
	${CC} -O0 -o ./build/ejercicio8 -fopenmp ./ejercicio8/ejercicio8.c -lm

clean:
	$(RM) ./build/ejercicio*

runE1:
	./build/ejercicio1

runE2:
	./build/ejercicio2a

	./build/ejercicio2b

runE3:
	ejercicio.3:
	cat ./ejercicio3/ejercicio3.md 
	
	echo "Puede ver la version en pdf en ./ejercicio3/ejercicio3.pdf"

runE4:
	cat ./ejercicio4/ejercicio4.md 

	echo "Puede ver la version en pdf en ./ejercicio4/ejercicio4.pdf"

runE5:
	./build/ejercicio5

runE6:
	./build/ejercicio6

runE7:
	./build/ejercicio7a

	./build/ejercicio7b

	cat ./ejercicio7/ejercicio7.md

	echo "Puede ver la version en pdf en ./ejercicio7/ejercicio7.pdf"

runE8:
	./build/ejercicio8Paralelo
	./build/ejercicio8Paralelo2
	./build/ejercicio8Secuencial
	./build/ejercicio8
	