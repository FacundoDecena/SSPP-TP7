#include <stdio.h>
#include <omp.h>

int main ()
{
    int nthreads, tid;
    // tid es una variable privada de cada thread
    #pragma omp parallel private (tid) 
    {
        // Obtiene el id del thread
        tid = omp_get_thread_num();
        printf("Hola mundo desde el thread = %d\n", tid);
        if (tid == 0)
        {
            nthreads = omp_get_num_threads();
            printf("Numero total de threads = %d\n", nthreads);
        }
    } // Sincronizacion implicita
    return 0;
}
