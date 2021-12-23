#include <stdio.h>

int main()
{
    int gajiPokok, tunjangan, hariKerja, jamKerja, uangMakan, uangTransport, totalGaji, totalMakan, totalTransport, absen,
        gajiPerjam, uangLembur, lembur, totalHari, upah;
    char nama[30];
    printf("Program Menghitung Total Gaji yang diterima\n");
    puts("=============================================");
    printf("Masukan Nama Anda : ");
    gets(nama);
    printf("Masukan Gaji Pokok anda : ");
    scanf("%i", &gajiPokok);
    printf("Masukan Tunjangan anda : ");
    scanf("%i", &tunjangan);
    printf("Masukan Berapa Hari Kerja(dalam sebulan) : ");
    scanf("%i", &hariKerja);
    printf("Masukan berapa jam anda Kerja dalam sehari : ");
    scanf("%i", &jamKerja);
    printf("masukan absent anda jika ada : ");
    scanf("%i", &absen);
    printf("masukan uang transport : ");
    scanf("%i", &uangTransport);
    printf("masukan uang makan : ");
    scanf("%i", &uangMakan);
    printf("masukan berapa jam lembur : ");
    scanf("%i", &lembur);
    if (absen > 0)
    {
        totalHari = hariKerja - absen;
        totalMakan = uangMakan * totalHari;
        totalTransport = uangTransport * totalHari;
        uangLembur = lembur / 173 * (gajiPokok + tunjangan);
        gajiPerjam = (gajiPokok + tunjangan) / (hariKerja * jamKerja);
        upah = totalHari * jamKerja * gajiPerjam;
        totalGaji = upah + totalMakan + uangLembur + totalTransport;
        printf("Nama : %s\n", nama);
        printf("Gaji : Rp.%i", totalGaji);
    }
    else
    {
        totalMakan = uangMakan * hariKerja;
        totalTransport = uangTransport * hariKerja;
        uangLembur = lembur / 173 * (gajiPokok + tunjangan);
        gajiPerjam = (gajiPokok + tunjangan) / (hariKerja * jamKerja);
        upah = hariKerja * jamKerja * gajiPerjam;
        totalGaji = upah + totalMakan + uangLembur + totalTransport;
        printf("Nama : %s\n", nama);
        printf("Gaji : Rp.%i", totalGaji);
    }

    return 0;
}
