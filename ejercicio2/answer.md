- ¿Qué diferencia hay en la ejecución de estos dos programas?

    - En la ejecución del primer programa, cada thread ejecuta las 10 iteraciones del for. Es decir que paraecen diez `Hola mundo 0`, diez `Hola mundo 1`, ..., diez `Hola mundo 5`. mientras que en la ejecución del segundo programa cada uno de los threads entra 2 veces haciendo un total entre todos de 10.

- ¿Qué sucedería si la variable n no fuera privada?

    - En el caso donde n no es privada, el segundo programa no se ve afectado, mientras que en el primero el primer thread en entrar realiza las 10 iteraciones mientras que los otros entran una única vez