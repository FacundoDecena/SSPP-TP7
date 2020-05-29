## Ejercicio 4

```C
    for (i=0;i<n;i++) {
        a[i] = 2.3*i;
        if (a[i] < b[i]) break;
    }
```
No es paralelizable por el break

```C
flag = 0;
    for (i=0;(i<n) & (!flag);i++){
        a[i] = 2.3*i;
        if (a[i] < b[i]) flag = 1;
}
```
No es paralelizable por la variable flag
