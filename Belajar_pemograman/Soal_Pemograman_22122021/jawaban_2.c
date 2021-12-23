#include <stdio.h>

int main()
{
    int hargaBarang , barangBawaan ,totalHarga = 0   ; 
    printf("Program menghitung Belanjaan : \n"); 
    printf("masukan jumlah barang bawaan : "); \
    scanf("%i", &barangBawaan); 
    for (int i = 1; i <= barangBawaan; i++)
    {
        printf("masukan harga barang : "); 
        scanf("%i", &hargaBarang); 
        totalHarga = totalHarga +  hargaBarang; 
    }
    printf("total harga barang bawaan anda  : Rp.%i", totalHarga); 
    return 0;
}
