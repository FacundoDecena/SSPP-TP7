## Ejercicio 7

### Ejecucion del primer bucle

```
./build/ejercicio7a
  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
  0  0  0  0  1  1  1  1  2  2  2  2  3  3  3  3  4  4  4  4


 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
  5  5  5  5  0  0  0  0  1  1  1  1  2  2  2  2  3  3  3  3
```

### Ejecucion del segundo bucle

```
./build/ejercicio7b
  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
  4  4  4  4  2  2  2  2  3  3  3  3  1  1  1  1  5  5  5  5


 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
  4  4  4  4  5  5  5  5  2  2  2  2  3  3  3  3  4  4  4  4
  ```

  El primer bucle reparte la tarea a los procesadores de forma ordenada (en este caso del procesador 0 al 5) mientras que el segundo lo envia de forma desordenada. Ambos asignan la misma cantidad de tarea a cada procesador.
  