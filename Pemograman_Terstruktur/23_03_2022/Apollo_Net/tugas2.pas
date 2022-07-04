program tugas2;
uses crt;
var
  harga, bayar,biayaAdministrasi : integer;
  hargaDiskon,jumlahBayar,kembali :real;
  diskon:real;
  namaBarang,idBarang ,diskonTampilan,jenisPenjualan,jenisBarang: string ;
begin
  gotoxy(2,1);write('Apollo Net');
  gotoxy(2,3);write('Jl. Singosari No. 1, Magelang-Jogja Km. 23');
  gotoxy(2,5);write('Telp. 0813 3332 9901');
  gotoxy(2,7);write('=================================================================================');
  gotoxy(2,8);write('Data Konsumen  ');
  gotoxy(50,8);write('Tanggal : ');
  gotoxy(2,10);write('Nama Konosumen    : ');
  gotoxy(2,11);write('Alamat Konsumen   :');
  gotoxy(2,13);write('================================================================================');
  gotoxy(2,14);write('Detail Penjualan ');
  gotoxy(2,15);write('ID Barang         : ');
  gotoxy(50,15);write('Nama Barang : ');
  gotoxy(2,16);write('Harga             : Rp.');
  gotoxy(2,17);write('Diskon            : ');
  gotoxy(2,18);write('Jenis Penjualan   : ');
  gotoxy(7,20);write(' [ T : Tunai ; K : Kredit ] ');
  gotoxy(2,22);write('Biaya Administrasi : Rp. ');
  gotoxy(2,23);write('Hadiah Langsung    : ');
  gotoxy(2,25);write('=================================================================================');
  gotoxy(2,27);write('Jumlah Bayar       : Rp.');
  gotoxy(2,28);write('Bayar              : Rp.');
  gotoxy(2,29);write('Kembali            : Rp.');
  {proses}
  biayaAdministrasi:=250000;
  gotoxy(60,8);readln;
  gotoxy(22,10);readln;
  gotoxy(22,11);readln;
  {SELEKSI ID}
  gotoxy(22,15);readln(idBarang);
  if (idBarang = 'L01') then
     begin
       jenisBarang:='Laptop';
       gotoxy(65,15);write('Laptop Asus');
       harga:=5250000;
       gotoxy(25,16);write(harga);
       diskonTampilan:='3%';
       gotoxy(22,17);write(diskonTampilan);
     end
  else if (idBarang = 'L02') then
     begin
        jenisBarang:='Laptop';
        gotoxy(65,15);write('Laptop HP');
        harga:=7000000;
        gotoxy(25,16);write(harga);
        diskonTampilan:='4%';
        gotoxy(22,17);write(diskonTampilan);
     end
    else if (idBarang = 'P01') then
     begin
        jenisBarang:='Printer';
        gotoxy(65,15);write('Printer HP');
        harga:=1150000;
        gotoxy(25,16);write(harga);
        diskonTampilan:='2%';
        gotoxy(22,17);write(diskonTampilan);
     end
    else if (idBarang = 'P02') then
       begin
          jenisBarang:='Printer';
          gotoxy(65,15);write('Printer Samsung');
          harga:=1500000;
          gotoxy(25,16);write(harga);
          diskonTampilan:='3%';
          gotoxy(22,17);write(diskonTampilan);
       end
    else if (idBarang = 'N01') then
       begin
          jenisBarang:='Netbook';
          gotoxy(65,15);write('Netbook Asus');
          harga:=3000000;
          gotoxy(25,16);write(harga);
          diskonTampilan:='2%';
          gotoxy(22,17);write(diskonTampilan);
       end
    else
        begin
          jenisBarang:='Netbook';
          gotoxy(65,15);write('Netbook Toshiba');
          harga:=3500000;
          gotoxy(25,16);write(harga);
          diskonTampilan:='3%';
          gotoxy(22,17);write(diskonTampilan);
        end;
  {MENGHITUNG DISKON}
  if (diskonTampilan = '3%' ) then
     begin
       diskon:= 0.03;
       hargaDiskon:= diskon * harga ;
       gotoxy(24,17);write(',(Rp.',hargaDiskon:0:0,')');
     end
  else if (diskonTampilan = '2%') then
     begin
       diskon:= 0.02;
       hargaDiskon:= diskon * harga ;
       gotoxy(24,17);write(',(Rp.',hargaDiskon:0:0,')');
     end
   else
     begin
       diskon:= 0.04;
       hargaDiskon:= diskon * harga ;
       gotoxy(24,17);write(',(Rp.',hargaDiskon:0:0,')');
     end;

  {MENGHITUNG TOTAL HARGA}
  gotoxy(22,18);readln(jenisPenjualan);
  if (jenisPenjualan = 'K' ) then
     begin
       gotoxy(26,22);write(0);
       gotoxy(23,23);write('-');
       jumlahBayar:= harga - hargaDiskon;
       gotoxy(26,27);write(jumlahBayar:0:0);
       gotoxy(26,28);readln(bayar);
       kembali:= bayar - jumlahBayar;
       gotoxy(26,29);write(kembali:0:0);
     end
  else {Tunai}
    begin
       {hadiah}
      if (jenisBarang = 'Laptop') then
         begin
           gotoxy(26,22);write(250000);
           gotoxy(23,23);write('Flashdisk 128GB');
           jumlahBayar:= harga - hargaDiskon +biayaAdministrasi;
           gotoxy(26,27);write(jumlahBayar:0:0);
           gotoxy(26,28);readln(bayar);
           kembali:= bayar - jumlahBayar ;
           gotoxy(26,29);write(kembali:0:0);
         end
      else if (jenisBarang = 'Printer') then
         begin
            gotoxy(26,22);write(250000);
            gotoxy(23,23);write('Mug Cantik');
            jumlahBayar:= harga - hargaDiskon +biayaAdministrasi;
            gotoxy(26,27);write(jumlahBayar:0:0);
            gotoxy(26,28);readln(bayar);
            kembali:= bayar - jumlahBayar ;
            gotoxy(26,29);write(kembali:0:0);
         end
      else
          begin
             gotoxy(26,22);write(250000);
             gotoxy(23,23);write('Flasdisk 32gb');
             jumlahBayar:= harga - hargaDiskon +biayaAdministrasi;
             gotoxy(26,27);write(jumlahBayar:0:0);
             gotoxy(26,28);readln(bayar);
             kembali:= bayar - jumlahBayar ;
             gotoxy(26,29);write(kembali:0:0);
          end;
    end;
  readln;
end.

