program tugas_17_06_2022_rev;
uses crt;
const
  ahli1 = 'Desain Grafis';
  ahli2 = 'Pemograman J2ME';
  ahli3 = 'Pemograman Java';
  ahli4 = 'Pemograman Web';
  ahli5 = 'Pemograman Android';
  ahli6 = 'Pemograman Python';
var
  nama :String;
  namaKeterampilan:Integer;
  potongan:real;
  npd:integer;
  jawaban : String;
  i,k:Integer;
  harga:integer;
  total:real;
  keterampilan:String;
  tnama :Array[1..100] of String[50];
  tketerampilan: Array[1..100] of String[50];
  tbiaya,tpotongan,ttotal:Array[1..30] of real ;
  cetak:integer;
  kondisi: String;

begin
while(jawaban <> 't') do
begin
   inc(i);
   kondisi:='false';
   repeat
   clrscr();
   gotoxy(1,1);writeln('LPK Maratama');
   gotoxy(1,2);writeln('JL. Magelang Jogja KM.13');
   gotoxy(1,3);writeln('Telp.028123912,Fax.0293-890-765');
   gotoxy(1,4);writeln('===============================================');
   gotoxy(1,5);writeln('NPD                :');
   gotoxy(40,5);writeln('Pendaftar Ke : ');
   gotoxy(1,6);writeln('Nama               :');
   gotoxy(1,7);writeln('Kode Ketrampilan   : ');
   gotoxy(1,8);writeln('Biaya Keterampilan :');
   gotoxy(1,9);writeln('Potongan           : ');
   gotoxy(1,10);writeln('Jumlah Bayar      : ');
   gotoxy(1,11);writeln('===============================================');


   {PRoses}

   gotoxy(23,5);readln(npd);
   gotoxy(55,5);write(i);
   gotoxy(23,6);readln(nama);
   {proses keterampilan}
   gotoxy(23,7);readln(namaKeterampilan);
   if (namaKeterampilan = 11) then
      begin
        kondisi := 'true';
        harga:= 500000 ;
        keterampilan:= ahli1;
        gotoxy(30,7);writeln('(',ahli1,')');
        gotoxy(23,8);write('Rp.500000');
      end
   else if (namaKeterampilan = 22 ) then
      begin
        kondisi := 'true';
        harga:=1000000 ;
        keterampilan:= ahli2;
        gotoxy(30,7);writeln('(',ahli2,')');
        gotoxy(23,8);writeln('1000000');
      end
   else if (namaKeterampilan = 33 ) then
      begin
        kondisi := 'true';
        harga:=1000000 ;
        keterampilan:= ahli3;
        gotoxy(30,7);writeln('(',ahli3,')');
        gotoxy(23,8);writeln('1000000');
      end
   else if (namaKeterampilan = 44 ) then
      begin
        kondisi := 'true';
        harga:=750000 ;
        keterampilan:= ahli4;
        gotoxy(30,7);writeln('(',ahli4,')');
        gotoxy(23,8);writeln('750000');
      end
   else if (namaKeterampilan = 55 ) then
      begin
        kondisi := 'true';
        harga:=1500000 ;
        keterampilan:= ahli5;
        gotoxy(30,7);writeln('(',ahli5,')');
        gotoxy(23,8);writeln('1500000');
      end
   else if (namaKeterampilan = 66 ) then
      begin
        kondisi := 'true';
        harga:= 1600000;
        keterampilan:= ahli6;
        gotoxy(30,7);writeln('(',ahli6,')');
        gotoxy(23,8);writeln('1600000');
      end
   else
       begin

         end;
   until kondisi := 'true';
   {handle potongan dan jumlah bayar }
   if(i > 0 ) and  (i <= 5)  then
      begin
        potongan := 0.15 * harga ;
        total:= harga - potongan;

        gotoxy(23,9);writeln('0.15 + ',harga,' = Rp.',potongan:0:0);
        gotoxy(23,10);write('Rp.',total:0:0);
      end
   else if (i > 5)  and (i <= 10) then
       begin
        potongan := 0.10 * harga ;
        total:= harga - potongan;
        gotoxy(23,9);writeln('0.10 +',harga,' = Rp.',potongan:0:0);
        gotoxy(23,10);write('Rp.',total:0:0);
      end
   else if (i > 10 ) and (i <=15) then
        begin
        potongan := 0.5 * harga ;
        total:= harga - potongan;
        gotoxy(23,9);writeln('0.5 +',harga,' = Rp.',potongan:0:0);
        gotoxy(23,10);write('Rp.',total:0:0);
      end
   else
    begin
        potongan := 0.0 ;
        total:= harga - potongan;
        gotoxy(23,9);writeln('0,0 +',harga,' = Rp.',potongan:0:0);
        gotoxy(23,10);write('Rp.',total:0:0);
      end;
      tnama[i] := nama;
      tketerampilan[i]:= keterampilan;
      tbiaya[i]:= harga;
      tpotongan[i]:= potongan;
      ttotal[i] := total;

      gotoxy(35,12);write('Ada Peserta Lagi ? (y/t) : ');
      readln(jawaban) ;
      if (jawaban = 't' ) then
           begin
                jawaban:= 't';
           end
end;




clrscr();
gotoxy(1,1);writeln('LPK Maratama');
gotoxy(1,2);writeln('JL. Magelang Jogja KM.13');
gotoxy(1,3);writeln('Telp.028123912,Fax.0293-890-765');
k:= 6;
gotoxy(1,4);Writeln('====================================================================================================');
gotoxy(1,5);writeln('No        Nama              Keahlian           Harga               Potongan            Bayar        ');
gotoxy(1,6);writeln('====================================================================================================');
for cetak:=1 to i do
    begin
       inc(k);
       gotoxy(1,k);write(cetak);
       gotoxy(11,k);write(tnama[cetak]);
       gotoxy(29,k);write(tketerampilan[cetak]);
       gotoxy(48,k);write('Rp.',tbiaya[cetak]:0:0);
       gotoxy(68,k);write('Rp.',tpotongan[cetak]:0:0);
       gotoxy(88,k);write('Rp.',ttotal[cetak]:0:0);
    end;
readln;
end.

