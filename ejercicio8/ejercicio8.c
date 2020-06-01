#include <omp.h>
#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define CAPACITY 2000000
#define MAX_VALUE 5000000

// findMax searchs for the max value in the array arr
int findMax(int arr[])
{
    int i, tid;
    int max = arr[0];
    for (i = 1; i < CAPACITY; i++)
    {
        if (arr[i] > max)
            max = arr[i];
    }

    return max;
}

// findMin searchs for the min value in the array arr
int findMin(int arr[])
{
    int i;
    int min = arr[0];
    for (i = 1; i < CAPACITY; i++)
    {
        if (arr[i] < min)
            min = arr[i];
    }

    return min;
}

// multiply multiplies each element
long long multiply(int arr[])
{
    long long res = 1;
    int i;
    for (i = 0; i < CAPACITY; i++)
    {
        res *= arr[i];
    }

    return res;
}

// findDesviacion calculates the desviacion estandar
double findDesviacion(int arr[])
{
    int i;
    double media = 0;
    double varianza = 0;

    // Find media
    for (i = 0; i < CAPACITY; i++)
    {
        media += arr[i];
    }
    media /= CAPACITY;

    // Find varianza
    for (i = 0; i < CAPACITY; i++)
    {
        varianza += pow((arr[i] - media), 2.0);
    }
    varianza /= (CAPACITY - 1);

    // Calculates the desviacion estandar
    return sqrt(varianza);
}

// randLim returns a random number between 0 and MAX_VALUE.
int randLim()
{

    int divisor = RAND_MAX / (MAX_VALUE + 1);
    int retval;

    do
    {
        retval = rand() / divisor;
    } while (retval > MAX_VALUE);

    return retval;
}

int main()
{
    int i = 0;
    int tid;
    int arr[CAPACITY];
    srandom(time(NULL));
    for (; i < CAPACITY; i++)
    {
        arr[i] = randLim();
    }

    double start, end;
    double startP, endP;
    double cpu_time_used, fastest = 9999999999.9;
    double cpu_time_usedP;

    printf("Secuencial \n");
    for (i = 0; i < 50; i++)
    {
        start = omp_get_wtime();
        printf("findMax desde el thread %d\n", tid);
        findMax(arr);
        printf("findMin desde el thread %d\n", tid);
        findMin(arr);
        printf("multiply desde el thread %d\n", tid);
        multiply(arr);
        printf("findDesviacion desde el thread %d\n", tid);
        findDesviacion(arr);
        end = omp_get_wtime();

        cpu_time_used = (end - start);
        if (cpu_time_used < fastest)
            fastest = cpu_time_used;
    }

    printf("\n Paralelo \n");
    startP = omp_get_wtime();
    #pragma omp parallel private(tid)
    {
        tid = omp_get_thread_num();
        #pragma omp sections
        {
            #pragma omp section
            {
                printf("findMax desde el thread %d\n", tid);
                findMax(arr);
            }
            #pragma omp section
            {
                printf("findMin desde el thread %d\n", tid);
                findMin(arr);
            }
            #pragma omp section
            {
                printf("multiply desde el thread %d\n", tid);
                multiply(arr);
            }
            #pragma omp section
            {
                printf("findDesviacion desde el thread %d\n", tid);
                findDesviacion(arr);
            }
        }
    }
    endP = omp_get_wtime();
    cpu_time_usedP = (endP - startP);

    printf("Paralelizada la iteracion sobre las llamadas a funciones\n");
    printf("Secuencial mas rapido: %lf\n\n", fastest);
    printf("Paralelo: %lf\n\n", cpu_time_usedP);
    printf("Speedup: %lf\n\n", (fastest / cpu_time_usedP));
}