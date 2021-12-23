#include <stdio.h>

int main () {
    //asumsi client tidak memasukan angka desimal 
    int celcius,fahrenheit , reamur,pil ; 
    puts("PROGRAM MENGHITUNG SUHU :"); 
    puts("=========================");
    puts("1. Celcius => fahrenheit "); 
    puts("2. Celcius => Reamur "); 
    printf("masukan pilihan anda (1 - 2 ) : "); 
    scanf("%i", &pil); 
    if(pil == 1 ) {
        printf("masukan suhu celcius :  "); 
        scanf("%i", &celcius); 
        fahrenheit = 1.8 * celcius + 32 ; 
        printf("suhu fanrenheit : %i",fahrenheit); 
    }else if ( pil == 2 ) { 
        printf("masukan suhu celcius :  "); 
        scanf("%i", &celcius); 
        reamur = 0.8 * celcius ; 
        printf("Reamur : %i",reamur);
    }else {
        printf("error"); 
    }
    return 0; 
}