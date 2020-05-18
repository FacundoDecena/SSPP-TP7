#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#define TRUE 1
#define FALSE 0

#define ARR_LEN 25
#define CUSTOM_NUM_THREADS TRUE
#define NUM_THREADS 5

void createArr (int* arr){
    int i;
    for (i = 0; i < ARR_LEN; i++){
        arr[i] = i+1;
    }
}

int main ()
{
    int nthreads, tid, i;
    int *a = (int *)malloc(sizeof(int) * ARR_LEN);
    int *b = (int *)malloc(sizeof(int) * ARR_LEN);
    int *c = (int *)malloc(sizeof(int) * ARR_LEN);
    
    createArr(a);
    createArr(b);

    if(CUSTOM_NUM_THREADS)
    {
        omp_set_num_threads(NUM_THREADS);
    }
    
    #pragma omp parallel private (tid) 
    {
        tid = omp_get_thread_num();
        #pragma omp for
        for( i = 0; i < ARR_LEN; i++ )
        {
            c[i] = a[i] + b[i];
        }
        if (tid == 0)
        {
            nthreads = omp_get_num_threads();
            printf("Numero total de threads = %d\n", nthreads);
        }
    }

    for( i = 0; i < ARR_LEN; i++ )
    {
        printf("C[%d] = %d\n", i, c[i]);
    }

    return 0;
}
