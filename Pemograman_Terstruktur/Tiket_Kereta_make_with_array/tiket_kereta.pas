program tiket_kereta;
uses crt;
var
  idKaryawan,tujuan,potonganTampilan:string;
  harga,jumlahPenumpang,baris,i,Z,baris2,baris3,totalHarga:integer;
  potongan,jumlahBayar: real;

begin
gotoxy(1,1); write('PT KAI');
gotoxy(1,2); Write('Jl. Mpu Tantular No. 20-30 , Kota Semarang');
gotoxy(1,3); write('Telp, 024-7456-0098');
writeln;
gotoxy(1,5);write('===========================================================================================');
gotoxy(1,6);write('          PENDATAAN TRANSAKSI PEMBELIAN TIKET KERETA            ');
gotoxy(1,7);write('===========================================================================================');
gotoxy(5,8);write('ID Karyawan             :');
gotoxy(50,8);write('Tanggal Pesan  : ');
gotoxy(5,9);write('Nama Pemesan            : ');
gotoxy(5,10);write('Tujuan                  :');
gotoxy(5,11);write('Tanggal Penerbangan     :');
gotoxy(5,12);write('Harga                   :');
gotoxy(5,13);write('Jumlah Penumpang        :');
gotoxy(5,14);write('Detail Penumpang ');
gotoxy(1,15);write('==========================================================================================');
gotoxy(5,16);write('NO               Nama Penumpang                     Tanggal Lahir ');
gotoxy(1,17);write('==========================================================================================');
{PROSES}
{Handle ID_Karyawan}
gotoxy(31,8);readln(idKaryawan);
if (idKaryawan = 'P301') then
  begin
      gotoxy(35,8);write('(Cahyani)');
  end
else
  begin
      gotoxy(35,8);write('(Chintya)');
  end;
gotoxy(67,8);readln;
gotoxy(31,9);readln;
{Handle Tujuan}
gotoxy(31,10);readln(tujuan);
if (tujuan = 'SJI') then
   begin
       gotoxy(34,10);write('(Semarang - Jakarta)');
       harga:= 450000;
   end
else if (tujuan = 'SSI')  then
   begin
       gotoxy(34,10);write('(semarang - Surabaya)');
       harga:= 450000;
   end
else if (tujuan = 'STI')  then
   begin
       gotoxy(34,10);write('(Semarang - Tegal)');
       harga:=200000;
   end
else if (tujuan = 'SLI')  then
   begin
       gotoxy(34,10);write('(Semarang - Solo)');
       harga:=200000;
   end
else if (tujuan = 'SPI')  then
   begin
       gotoxy(34,10);write('(Semarang - Purwokerto)');
       harga:=210000;
   end
else if (tujuan = 'SBI')  then
   begin
       gotoxy(34,10);write('(Semarang - Brebes)');
       harga:=225000;
   end
else
    begin
        clrscr;
        write('ERROR');
    end;

gotoxy(31,11);readln;
gotoxy(31,12);write(harga);
gotoxy(31,13);readln(jumlahPenumpang);
gotoxY(34,13);write('orang');
totalHarga:= jumlahPenumpang * harga;
potongan:= totalHarga * 0.05;
potonganTampilan:= '5%';
jumlahBayar:= totalHarga - potongan;
{Handle Detail_Penumpang}
 baris:=18;
 for i:=1 to jumlahPenumpang do
   begin
       gotoxy(5,baris);write(i);
       gotoxy(22,baris);readln;
       gotoxy(57,baris);readln;
       inc(baris);
   end;
 baris2:= baris + 1;
 baris3:= baris2 + 1;
 gotoxy(1,baris); write('==========================================================================================');
 gotoxy(5,baris2);write('Jumlah                  :  ',jumlahPenumpang,' * ',harga,'                        Rp.',totalHarga);
 gotoxy(5,baris3);write('Potongan Harga          :  ',potonganTampilan,'                                Rp. ',potongan:0:0);
 inc(baris3);
 gotoxy(5,baris3);write('                                                            -----------');
 inc(baris3);
 gotoxy(5,baris3);write('Jumlah Bayar            :                                    Rp.',jumlahBayar:0:0);



readln;
end.




{tamilan sampai no, nama penumpang , tanggal lahir }

