#include <stdio.h>
#include <math.h>

int main()
{
    //asusmsi trapesium siku siku
    // menggunakan tipe data integer di karenakan asumsi user tidak akan meng input kan desimal
    int a, b, t, sisiMiring, x, c, keliling;
    printf("masukan alas a : ");
    scanf("%i", &a);
    printf("masukan ala b : ");
    scanf("%i", &b);
    printf("masukan tinggi : ");
    scanf("%i", &t);
    c = b - a;            // untuk mencari bagian alas segitiga
    x = c * c + t * t;    // menghitung sisi miring
    sisiMiring = sqrt(x); //menghitung sisi miring
    keliling = a + b + sisiMiring + t;
    printf("keliling nya adalah : %i", keliling);
    return 0;
}
