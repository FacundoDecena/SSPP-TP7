# Build Executable
SHELL=/bin/bash

CC = gcc

clean:
	$(RM) ./build/ejercicio*

ejercicio.1:
	${CC} -o ./build/ejercicio1 -fopenmp ./ejercicio1/ejercicio1.c

ejercicio.1.run:
	./build/ejercicio1

ejercicio.2:
	${CC} -o ./build/ejercicio2a -fopenmp ./ejercicio2/ejercicio2a.c
	${CC} -o ./build/ejercicio2b -fopenmp ./ejercicio2/ejercicio2b.c

ejercicio.2.run:
	cat ./ejercicio2/answer.md
	# Puede ver la version en pdf en ./ejercicio2/answer.pdf

ejercicio.2.runA:
	./build/ejercicio2a

ejercicio.2.runB:
	./build/ejercicio2b

ejercicio.2.runAll:
	./build/ejercicio2a
	./build/ejercicio2b
	cat ./ejercicio2/answer.md
	# Puede ver la version en pdf en ./ejercicio2/answer.pdf

ejercicio.3:
	cat ./ejercicio3/ejercicio3.md 
	# Puede ver la version en pdf en ./ejercicio3/ejercicio3.pdf

ejercicio.4:
	cat ./ejercicio4/ejercicio4.md 
	# Puede ver la version en pdf en ./ejercicio4/ejercicio4.pdf

ejercicio.5:
	${CC} -o ./build/ejercicio5 -fopenmp ./ejercicio5/ejercicio5.c

ejercicio.5.run:
	./build/ejercicio5

ejercicio.6:
	${CC} -o ./build/ejercicio6 -fopenmp ./ejercicio6/ejercicio6.c

ejercicio.6.run:
	./build/ejercicio6

ejercicio.7:
	${CC} -o ./build/ejercicio7a -fopenmp ./ejercicio7/bucle1.c
	${CC} -o ./build/ejercicio7b -fopenmp ./ejercicio7/bucle2.c

ejercicio.7.run:
	cat ./ejercicio7/ejercicio7.md
	# Puede ver la version en pdf en ./ejercicio7/ejercicio7.pdf

ejercicio.7.runA:
	./build/ejercicio7a

ejercicio.7.runB:
	./build/ejercicio7b

ejercicio.7.runAll:
	./build/ejercicio7a
	./build/ejercicio7b
	cat ./ejercicio7/ejercicio7.md
	# Puede ver la version en pdf en ./ejercicio7/ejercicio7.pdf

ejercicio.8:
	${CC} -o ./build/ejercicio8Secuencial -fopenmp ./ejercicio8/ejercicio8Secuencial.c -lm
	${CC} -O1 -o ./build/ejercicio8Paralelo2 -fopenmp ./ejercicio8/ejercicio8Paralelo2.c -lm
	${CC} -O1 -o ./build/ejercicio8Paralelo -fopenmp ./ejercicio8/ejercicio8Paralelo.c -lm
	${CC} -O0 -o ./build/ejercicio8 -fopenmp ./ejercicio8/ejercicio8.c -lm

ejercicio.8.run:
	./build/ejercicio8
ejercicio.8.runParalelo1:
	./build/ejercicio8Paralelo
ejercicio.8.runParalelo2:
	./build/ejercicio8Paralelo2
ejercicio.8.runSecuencial:
	./build/ejercicio8Secuencial
ejercicio.8.runAll:
	./build/ejercicio8Paralelo
	./build/ejercicio8Paralelo2
	./build/ejercicio8Secuencial
	./build/ejercicio8
	