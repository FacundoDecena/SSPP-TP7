# Build Executable
SHELL=/bin/fish

CC = gcc

ejercicio.1:
	${CC} -o ./build/ejercicio1 -fopenmp ./ejercicio1/ejercicio1.c

ejercicio.2:
	${CC} -o ./build/ejercicio2a -fopenmp ./ejercicio2/ejercicio2a.c
	${CC} -o ./build/ejercicio2b -fopenmp ./ejercicio2/ejercicio2b.c

ejercicio.3:
	# Solo se que anda en fish, perdon si se rompe en otros :D
	open ./ejercicio3/ejercicio3.pdf

	cat ./ejercicio3/ejercicio3.md 
	
ejercicio.4:
	# Solo se que anda en fish, perdon si se rompe en otros :D
	open ./ejercicio4/ejercicio4.pdf

	cat ./ejercicio4/ejercicio4.md 

ejercicio.5:
	${CC} -o ./build/ejercicio5 -fopenmp ./ejercicio5/ejercicio5.c

ejercicio.6:
	${CC} -o ./build/ejercicio6 -fopenmp ./ejercicio6/ejercicio6.c

ejercicio.7:
	${CC} -o ./build/ejercicio7a -fopenmp ./ejercicio7/bucle1.c

	${CC} -o ./build/ejercicio7b -fopenmp ./ejercicio7/bucle2.c

clean:
	$(RM) ./build/ejercicio*

runE1:
	./build/ejercicio1

runE2:
	./build/ejercicio2a

	./build/ejercicio2b

runE5:
	./build/ejercicio5

runE6:
	./build/ejercicio6

runE7:
	./build/ejercicio7a

	./build/ejercicio7b