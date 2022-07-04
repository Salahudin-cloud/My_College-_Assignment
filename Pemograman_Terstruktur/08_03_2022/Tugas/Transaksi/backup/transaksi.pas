program transaksi;
uses crt;
var
  namaKaryawan,kodeBarang,namaBarang,tanggal : string ;
  jumlah,total,bayar ,subtotal ,kembalian  :integer;
const
  napoly = 75000;
  chitose = 350000;
begin
   {bagian proses}
   write('masukan nama karyawan : ');
   readln(namaKaryawan);
   write('Masukan kode Barang : ') ;
   readln(kodeBarang);
   write('masukan jumlah barang : ');
   readln(jumlah);
   write('masukan uang pembayaran : ' );
   readln(bayar);
   write('masukan tanggal(misal :20 Januari 2022) :  ');
   readln(tanggal) ;
   writeln('====================================================================');

   if (kodeBarang ='KRS001' ) then
   begin
     namaBarang := 'Kursi Plastik NAPOLY';
     subtotal := jumlah * napoly;
     total := subtotal;
     kembalian := bayar - total ;
     gotoxy(25,25);writeln(namaBarang);
     gotoxy(50,25);write(napoly);
   end
   else
   begin
      namaBarang := 'Kursi Plastik CHITOSE';
      subtotal := jumlah * chitose;
      total := subtotal;
      kembalian := bayar - total ;
      gotoxy(25,25);writeln(namaBarang);
      gotoxy(50,25);write(chitose);
   end;

   { bagian tampilan }
   gotoxy(1,10); writeln('Toko Mebel Laris Manis');
   gotoxy(1,11); writeln('Jl.Magelang-Purworejo km.45 ');
   gotoxy(1,12);  writeln('Telp. 0293-123-321 Fax. 0293-654 789');
   writeln;
   writeln;
   gotoxy(1,15); writeln('Tanggal Transaksi : ');
   gotoxy(1,16);  writeln(tanggal);
   gotoxy(50,17);writeln('Nomor Nota : 00GHJ1 ');
   writeln;
   writeln;
   Writeln('Nama Kasir : ');
   gotoxy(14,20); write(namaKaryawan);
   writeln;
   writeln;
   writeln('Detail Barang :  ');
   writeln('========================================================================================================');
   gotoxy(1,24);writeln('No');
   gotoxy(10,24);writeln('Kode Barang');
   gotoxy(25,24);writeln('Nama Barang ');
   gotoxy(50,24);writeln('Harga / Unit ');
   gotoxy(70,24);writeln('Kuantitas ');
   gotoxy(90,24);writeln('Sub Total');
   {isi tabel percobaan }
   gotoxy(1,25);write('1.');
   gotoxy(10,25);writeln(kodeBarang);
   gotoxy(70,25);writeln(jumlah);
   gotoxy(90,25);writeln(subtotal);
   writeln('========================================================================================================');
   writeln;
   writeln('Total     : ');
   writeln('Bayar     : ');
   writeln('Kembalian : ');
   gotoxy(15,27);writeln(total);
   gotoxy(15,28);writeln(bayar);
   gotoxy(15,29);writeln(kembalian);




   readln;
end.

