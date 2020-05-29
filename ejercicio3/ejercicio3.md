# Ejercicio 3

## Dependencia de datos
---

Suponga los siguientes fragmentos de programa e indique que lazos son susceptibles de ser paralelizados y cuáles no.

-
    ```Pascal
    DO i = 1, N
        a[i] = a[i+1] + x
    END DO
    ```
    - Paralelizable

-
    ```Pascal
    DO i = 1, N
        a[i]= a[i] + b[i]
    END DO
    ```
    - Paralelizable
-
    ```Pascal
    ix = base
    DO i = 1, N
        a ( ix ) = a ( ix ) - b ( i )
        ix = ix + stride
    END DO
    ```
    - No Paralelizable por la variable ix
-
    ```Pascal
    DO i = 1, N
        b ( i ) = ( a ( i ) - a (i-1) )*0.5
    END DO
    ```
    - Paralelizable
