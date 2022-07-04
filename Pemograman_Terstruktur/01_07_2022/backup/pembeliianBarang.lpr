program pembelianBarang;
uses crt;
const
  barang1 = 'DVD Samsung';
  barang2 = 'DVD Sony';
  barang3 = 'Televisi LED Sharp 32"';
  barang4 = 'Televisi LED LG 42"';
  barang5 = 'Lemari Es Toshiba 2 Pintu';
  barang6 = 'Lemari Es Sharp 2 Pintu';
  barang7 = 'Freezer Sharp';
var
  jawaban,jawaban2,kondisiId,namaBarang,kondisi,id,idFaktur : String;
  i,j,z,x,c,v,b,cetak,qty,hargaBarang,subTotal,totalBarang,harga :Integer;
  diskon,bayar:real ;
  nama:String;
  Anama:array[1..30] of String[30];
  Aid:array[1..30] of String[30];
  Abayar:array[1..30] of real ;
  Anomor: array[1..30] of Integer;
begin
   jawaban := 'y';
  {tampilan}
   while jawaban = 'y' do
     begin
       clrscr();
       inc(i);
       gotoxy(1,1);write('Toko Elektronik Jaya');
       gotoxy(1,2);write('Jl.Magelang - Purworejo Km.28');
       gotoxy(1,3);write('Telp. 0293-44555');
       gotoxy(1,5);write('No Faktur      : ');
       gotoxy(1,6);write('Nama Konsumen  :');
       gotoxy(35,6);write('Tanggal : ');
       gotoxy(1,7);write('Alamat         :');
       gotoxy(1,8);write('Telepon        :');

       gotoxy(1,10);write('Detail Barang  : ');
       gotoxy(1,11);write('========================================================================================================');
       gotoxy(1,12);write('No        ID Barang       Nama Barang                      Harga          Qty              Total');
       gotoxy(1,13);write('========================================================================================================');


       {proses}
       gotoxy(20,5);readln(idFaktur); {membaca inputan no faktur}
       gotoxy(22,5);write(i);
       gotoxy(20,6);readln(nama); {membaca inputan nama konsumer}
       gotoxy(45,6);readln(); {membaca inputan tanggal }
       gotoxy(20,7);readln(); {membaca inputan Alamat}
       gotoxy(20,8);readln(); {membaca inputan telepon}
       {memasukan id faktur , nama,nomor }
       Anama[i]:= nama;
       Aid[i]:= idFaktur;
       Anomor[i]:= i;
       {handle inputan detail barang : }
       j:= 13;
       jawaban2:='y';
       while jawaban2 = 'y' do
         begin
           inc(j); {buat larik }
           inc(z);
           repeat
             gotoxy(1,j);write(z);
             gotoxy(11,j);readln(id); {membaca inputan id }
             if(id = 'BED1') then
               begin
                   harga:=1050000;
                   gotoxy(27,j);write(barang1);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BED2') then
               begin
                   harga:=300000;
                   gotoxy(27,j);write(barang2);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BET1') then
               begin
                   harga:=2200000;
                   gotoxy(27,j);write(barang3);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BET2') then
               begin
                   harga:=4000000;
                   gotoxy(27,j);write(barang4);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BEL1') then
               begin
                   harga:=2500000;
                   gotoxy(27,j);write(barang5);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BEL2') then
               begin
                   harga:=300000;
                   gotoxy(27,j);write(barang6);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else if (id = 'BEF1') then
               begin
                   harga:=300000;
                   gotoxy(27,j);write(barang7);
                   gotoxy(60,j);write('Rp',harga);
                   gotoxy(76,j);readln(qty);
                   totalBarang:= qty * harga ;
                   subTotal := subTotal + totalBarang;
                   gotoxy(92,j);write('Rp.',totalBarang);
                   kondisi:='t';
               end
             else
                begin
                   gotoxy(1,j);write('                                                                               ');
                   kondisi:= 'f';
                end;
           until kondisi='t';
           inc(j);
           gotoxy(1,j);write('apakah anda ingin mengulang ? : ');
           gotoxy(34,j);readln(jawaban2);
           gotoxy(1,j);write('                                       '); {menghapus inputan }
           dec(j);
           if jawaban2 = 't' then
             {handle total,bayar,diskon}
              begin
                  inc(j);
                  gotoxy(1,j);write('========================================================================================================');
                  inc(j);
                  gotoxy(92,j);write('Rp',subTotal);
                  if (subTotal > 5000000 ) then
                    begin
                       diskon:= subTotal * 0.7 ;
                       bayar:= subTotal - diskon ;
                       Abayar[i]:= bayar;
                       inc(j);
                       gotoxy(92,j);write('Rp',diskon:0:0);
                       inc(j);
                       gotoxy(92,j);write('Rp',bayar:0:0);
                    end
                  else if (subTotal = 3000000 ) or (subTotal > 3000000 ) and (subTotal <= 5000000)then
                     begin
                       diskon:= subTotal * 0.7 ;
                       bayar:= subTotal - diskon ;
                       Abayar[i]:= bayar;
                       inc(j);
                       gotoxy(92,j);write('Rp',diskon:0:0);
                       inc(j);
                       gotoxy(92,j);write('Rp',bayar:0:0);
                     end
                  else
                      begin
                       diskon:= subTotal * 0.025 ;
                       bayar:= subTotal - diskon ;
                       Abayar[i]:= bayar;
                       inc(j);
                       gotoxy(92,j);write('Rp',diskon:0:0);
                       inc(j);
                       gotoxy(92,j);write('Rp',bayar:0:0);
                      end;
                  jawaban2:='t';
              end
         end;


     x:= j;
     inc(x);
     inc(x);
     {handle jawaban }
       gotoxy(1,x);write('Apakah ingin lagi ? : ');
       gotoxy(23,x);readln(jawaban);
       if(jawaban = 't' ) then
        begin
          jawaban := 't';
          clrscr();
        end;
     end;

 {Data Rekap }
 gotoxy(1,1);write('Toko Elektronik Jaya');
 gotoxy(1,2);write('Jl.Magelang - Purworejo Km.28');
 gotoxy(1,3);write('Telp. 0293-44555');
 gotoxy(1,5);write('=================================================================');
 gotoxy(1,6);write('NO      ID Faktur         Nama Konsumen               Total Bayar');
 gotoxy(1,7);write('=================================================================');
 v:=7;
 for cetak:= 1 to i do
  begin
       inc(v);
       inc(c);
       b := v + b;
       gotoxy(1,v);write(c);
       gotoxy(9,v);write(Aid[cetak]);
       gotoxy(11,v);write(Anomor[cetak]);
       gotoxy(29,v);write(Anama[cetak+1]);
       gotoxy(57,v);write('Rp',Abayar[cetak+1]:0:0);

  end ;
readln;
end.

