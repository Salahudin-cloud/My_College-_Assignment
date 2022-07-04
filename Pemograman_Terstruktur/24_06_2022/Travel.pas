program Travel;
uses crt;
const
  diskon1 = '10%';
  diskon2 = '5%';
var
  i : Integer;
  Anama,Atujuan,Apaket:array [1..30] of String[30];
  Aorang:array[1..30] of Integer;
  rombongan:integer;
  namaKonsumen,tujuan,paket,idTujuan,fasilitas:String;
  diskon,totalBayar:real;
  kondisi:String;
  harga,orang,torang,thargaBlm:integer;
  jawaban,nama:String;
  Abiaya:array [1..30] of real ;
  cetak,k,x:integer;
  allTotal:real;
begin
while(jawaban <> 't') do
   begin
   inc(i);
   kondisi:='false';
   clrscr();
   gotoxy(1,1);writeln('Andri TOur and Travel ');
   gotoxy(1,2);writeln('JL. Sriwijaya No 80 . Semarang');
   gotoxy(1,3);writeln('Telp.028123912,Fax.0293-890-765');
   gotoxy(1,4);writeln('===================================================================');
   gotoxy(1,5);writeln('                     Pendataan Peserta Tour Wisata');
   gotoxy(1,6);writeln('===================================================================');
   gotoxy(1,7);writeln('Data Konosumen ');
   gotoxy(30,7);writeln('Tanggal  : ');
   gotoxy(1,8);writeln('Nama  Koonsumen    :');
   gotoxy(1,9);writeln('Alamat Koonsumen   :');
   gotoxy(1,10);writeln('No .Telpon         :');
   gotoxy(1,11);writeln('Detail Tour  ');
   gotoxy(1,12);writeln('Id Tujuan         :');
   gotoxy(40,12);writeln('Tujuan : ');
   gotoxy(1,13);writeln('Paket             :');
   gotoxy(40,13);writeln('Fasilitas :');
   gotoxy(1,14);writeln('Biaya Paket/Orang :');
   gotoxy(1,15);writeln('Jumlah Peserta    :');
   gotoxy(25,15);writeln('Orang');
   gotoxy(1,16);writeln('Jumlah Bayar      :Rp.');
   gotoxy(35,16);writeln('Discount : ');
   gotoxy(50,16);writeln('(Rp.');
   gotoxy(36,17);writeln('Total Bayar : Rp.');
   gotoxy(1,18);writeln('===================================================================');

   gotoxy(41,7);readln();
   gotoxy(23,8);readln(nama);
   gotoxy(23,9);readln();
   gotoxy(23,10);readln();
   gotoxy(22,12);readln(idTujuan);
   Anama[i] := nama;
repeat
   {Proses}


   {handle tujuan }

      if(idTujuan = 'TJN01') then
         begin
             kondisi:='true';
             tujuan:='Jakarta';
              Atujuan[i] := tujuan;
             gotoxy(49,12);write(tujuan);
         end
      {TJN02 = Yogyakarta}
      else if (idTujuan = 'TJN02') then
         begin
           kondisi:='True';
           tujuan:='Yogyakarta';
            Atujuan[i] := tujuan;
           gotoxy(49,12);write(tujuan);
         end
       {TJN03 = Bandung}
      else if (idTujuan = 'TJN03') then
         begin
            kondisi:='true';
             tujuan:='Bandung';
              Atujuan[i] := tujuan;
             gotoxy(49,12);write(tujuan);
         end
      {TJN02 = Surabaya}
      else if (idTujuan = 'TJN04')then
         begin
             kondisi:='true';
             tujuan:='Surabaya';
              Atujuan[i] := tujuan;
             gotoxy(49,12);write(tujuan);
         end
      {TJN02 = Bali}
      else if (idTujuan = 'TJN05')then
         begin
            kondisi:='true';
             tujuan:='Bali';
              Atujuan[i] := tujuan;
             gotoxy(49,12);write(tujuan);
         end
      {eror}
      else
        begin
          kondisi:='false';
          clrscr();

        end;


until kondisi='true';

   {handle input paket }
gotoxy(22,13);readln(paket);
repeat
   {handle ppaket 1 }
       {id : TJN01}
       if ((paket = '1') and (idTujuan = 'TJN01')) then
          begin
              kondisi:='true';
              harga:=1600000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac,Hotel Bintang 3 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
         end
       {TJN02}
       else if ((paket = '1') and (idTujuan = 'TJN02')) then
          begin
              kondisi:='true';
              harga:=600000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac,Hotel Bintang 3 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN03}
       else if ((paket = '1') and (idTujuan = 'TJN03')) then
          begin
              kondisi:='true';
              harga:=900000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac,Hotel Bintang 3 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN04}
       else if ((paket = '1') and (idTujuan = 'TJN04')) then
          begin
              kondisi:='true';
              harga:=900000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac,Hotel Bintang 3 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN05}
       else if ((paket = '1') and (idTujuan = 'TJN05')) then
          begin
              kondisi:='true';
              harga:=1500000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac,Hotel Bintang 3 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end

       {handle ppaket 2}
       {id : TJN01}
       else if ((paket = '2') and (idTujuan = 'TJN01')) then
          begin
              kondisi:='true';
              harga:=2200000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac VIP,Hotel Bintang 5 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
         end
       {TJN02}
       else if ((paket = '2') and (idTujuan = 'TJN02')) then
          begin
              kondisi:='true';
              harga:=1600000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac VIP,Hotel Bintang 5 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN03}
       else if ((paket = '2') and (idTujuan = 'TJN03')) then
          begin
              kondisi:='true';
              harga:=2000000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac VIP,Hotel Bintang 5 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN04}
       else if ((paket = '2') and (idTujuan = 'TJN04')) then
          begin
              kondisi:='true';
              harga:=2000000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac VIP ,Hotel Bintang 5 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {TJN05}
       else if ((paket = '2') and (idTujuan = 'TJN05')) then
          begin
              kondisi:='true';
              harga:=3600000;
              Apaket[i] := paket;
              fasilitas:='Bus Ac VIP,Hotel Bintang 5 , Souvenir';
              gotoxy(52,13);write(fasilitas);
              gotoxy(21,14);write(harga);
          end
       {eror}
       else
         begin
          kondisi:='false';
          if(kondisi='false') then
          begin
             clrscr;
             write('error');
             kondisi:='true';
             readln;
             halt(0);
             end;
          end;

until kondisi='true';

  {handle input orang }
gotoxy(22,15);readln(orang);
repeat
       {hsndle harga total }

         if(orang >= 8  )  then
            begin
                kondisi:='true';
                thargaBlm := harga * orang ;
                diskon:= harga * 0.10;
                totalBayar:= harga - diskon ;
                Aorang[i] := orang;
                Abiaya[i] := totalBayar;
                gotoxy(24,16);write(thargaBlm);
                gotoxy(45,16);write(diskon1);
                gotoxy(24,16);write(harga);
                gotoxy(54,16);write(diskon:0:0,')');
                gotoxy(53,17);write(totalBayar:0:0);
            end
        else if((orang >= 3 ) or (orang <= 7  )and (orang < 8 ))then
              begin
                kondisi:= 'true';
                thargaBlm := harga * orang ;
                diskon:= harga * 0.5;
                totalBayar:= harga - diskon ;
                Aorang[i] := orang;
                Abiaya[i] := totalBayar;
                gotoxy(24,16);write(thargaBlm);
                gotoxy(45,16);write(diskon2);
                gotoxy(24,16);write(harga);
                gotoxy(54,16);write(diskon:0:0,')');
                gotoxy(53,17);write(totalBayar:0:0);
            end
        else if((orang > 0  )  and (orang < 3 )) then
              begin
                kondisi:= 'true';
                thargaBlm := harga * orang ;
                diskon:= 0;
                totalBayar:= harga - diskon ;
                Aorang[i] := orang;
                Abiaya[i] := totalBayar;
                gotoxy(24,16);write(thargaBlm);
                gotoxy(45,16);write('0%');
                gotoxy(24,16);write(harga);
                gotoxy(54,16);write(diskon:0:0,')');
                gotoxy(53,17);write(totalBayar:0:0);
            end
        else
            begin
              kondisi:='false';
              clrscr();
            end;

until kondisi='true';



   gotoxy(33,19);write('Apakah ingin mengisi lagi ?(y/t): ');
   gotoxy(66,19);readln(jawaban);
   if (jawaban = 't') then
         begin
           jawaban := 't';
         end;
   end;

{rekap data }
clrscr();
gotoxy(1,1);writeln('Andri TOur and Travel ');
gotoxy(1,2);writeln('JL. Sriwijaya No 80 . Semarang');
gotoxy(1,3);writeln('Telp.028123912,Fax.0293-890-765'); ;
k:= 6;
gotoxy(1,4);Writeln('====================================================================================================');
gotoxy(1,5);writeln('No        Nama              tujuan wisata           paket               rombongan             Biaya        ');
gotoxy(1,6);writeln('====================================================================================================');
for cetak:=1 to i do
    begin
       inc(k);
       gotoxy(1,k);write(cetak);
       gotoxy(11,k);write(Anama[cetak]);
       gotoxy(29,k);write(Atujuan[cetak]);
       gotoxy(54,k);write(Apaket[cetak]);
       gotoxy(74,k);write(Aorang[cetak]);
       gotoxy(94,k);write('Rp.',Abiaya[cetak]:0:0);
       allTotal:= allTotal + Abiaya[i];
    end;
inc(k);
gotoxy(1,k);write('-------------------------------------------------------------------------------------------------------');
inc(k);
gotoxy(80,k);write('Total Bayar : Rp.',allTotal:0:0);
{total :rp.}
readln();
end.

