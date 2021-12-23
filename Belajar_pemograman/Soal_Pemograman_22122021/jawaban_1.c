#include <stdio.h>

//program menghitung luas dan keliling trapesium
int main()
{
    //asumsi bahwa  hasil nya tidak akan mendapatkan desimal maka saya menggunakan tipe data integer
    //asumsi bentuk trapesiumnya adalah trapesium sama kaki
    int a, b, t, luas;
    printf("Program Menghitung Luas dan Keliling Trapesium : \n");
    printf("masukan alas a : ");
    scanf("%i", &a);
    printf("masukan ala b : ");
    scanf("%i", &b);
    printf("masukan tinggi : ");
    scanf("%i", &t);
    luas = 0.5 * (a + b) * t;
    printf("luas : %i\n", luas);
    return 0;
}