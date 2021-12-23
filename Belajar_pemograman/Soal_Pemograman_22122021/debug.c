#include <stdio.h>

int main()
{
    int jumlah = 0, N, i;

    for (i = 0; i < 5; i++)
    {
        printf("masukan bilangan : ");
        scanf("%i", &N);
        jumlah = jumlah + N;
    }
    printf("jumlahnya adalah %i\n", jumlah);
    return 0;
}