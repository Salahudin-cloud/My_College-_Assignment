program Angsuran;
uses crt;
const
  kodPed1 = 'SD';
  kodPed2 = 'SMP/Sederajat';
  kodPed3 = 'SMA';
  kodPed4 = 'Diploma';
  kodPed5 = 'Sarjana';

  kodPi1 = 'Kerdit Perumahhan Rakyat ' ;
  kodPi2 = 'Kredit Kerndaraan Bermotor ' ;
  kodPi3 = 'Kerdit Bank Guna Karya ' ;
  kodPi4 = 'Kerdit Pendidikan ' ;
var
  nama,kondisi,kodePeminjam,kodePendidikan,kondisi2,kondisi3,kondisi4,namaPinjaman,bungaStr:String;
  bunga:real;
  bulan,cetak,i:Integer;

  maksKredit,jmlPinjaman:LongInt;
  suran:real;
  bungaHit : real;
  Anama:Array [1..30] of String[30];
  AnamaPinjaman : Array [1..30] of String[30];
  Abunga: Array [1..30] of String[30] ;
  AjmlPinjaman : Array[1..30] of real;
  Ajangka : array [1..30] of Integer;
  jawaban : String ;
  {variabel untuk auuto menambah larik}
  z:Integer;
begin
jawaban :='y';
while(jawaban <> 't') do
  begin
  inc(i);
  clrscr();
  gotoxy(1,1);write('Bangk "Gemar Menabung "');
  gotoxy(1,2);write('JL Magelang - Secang , KM 70 telp.099123814');
  gotoxy(1,3);write('============================================================================');
  gotoxy(1,4);write('Register Pinjaman       : ');
  gotoxy(1,5);write('Nama Peminjam           : ');
  gotoxy(55,5);write('Tanggal :');
  gotoxy(1,6);write('Alamat                  :');
  gotoxy(1,7);write('Kode Pendidikan         :');
  gotoxy(1,8);write('============================================================================');
  gotoxy(1,9);write('Data Kredit Pinjaman     ');
  gotoxy(1,10);write('Kode Pinjaman           :');
  gotoxy(1,11);write('Jumlah Pinjaman        : Rp. ');
  gotoxy(1,12);write('Lama Pinjaman          :');
  gotoxy(1,13);write('Bunga Bulan            :');
  gotoxy(1,14);write('Angusuran / Bulan      : Rp. ');


  {Proses}

        gotoxy(30,4);readln();
        gotoxy(30,5);readln(nama);
        gotoxy(65,5);readln();
        gotoxy(30,6);readln();
  {Handle kode pendiikan }

  repeat
        gotoxy(30,7);readln(kodePendidikan);
        if (kodePendidikan = 'J1') then
           begin
               gotoxy(35,7);write(kodPed1);
               kondisi:='t'
           end
         else if (kodePendidikan = 'J2') then
            begin
               gotoxy(35,7);write(kodPed2);
               kondisi:='t'
            end
         else if (kodePendidikan = 'J3') then
            begin
               gotoxy(35,7);write(kodPed3);
               kondisi:='t'
            end
         else if (kodePendidikan = 'J4') then
            begin
               gotoxy(35,7);write(kodPed4);
               kondisi:='t'
            end
         else if (kodePendidikan='J5') then
            begin
               gotoxy(35,7);write(kodPed5);
               kondisi:='t'
            end
         else
             begin
               {jika pilihan di atas tidak ada maka akan menampilkank }
                gotoxy(30,7);write(' tidak ada ' );
                readln;
                gotoxy(30,7);write('                                                   ' ); {menghapus kalimat 'tidak ada'}
                kondisi:='f';
             end;
   until kondisi='t';

   {handle peminjam }

   repeat
         gotoxy(30,10);readln(kodePeminjam);
         if (kodePeminjam = 'PK001') then
            begin
               gotoxy(37,10);write(kodPi1);
               bunga:=0.10 ;
               maksKredit:= 2000000000;
               namaPinjaman := kodPi1;
               kondisi2:='t';
               bungaStr:= '0.10';
            end
         else if (kodePeminjam = 'PK002') then
            begin
               gotoxy(37,10);write(kodPi2);
               bunga:=0.80 ;
               maksKredit:= 500000000;
               namaPinjaman := kodPi2;
               kondisi2:='t';
               bungaStr:= '0.80';
            end
         else if (kodePeminjam = 'PK003') then
            begin
               gotoxy(37,10);write(kodPi3);
               bunga:=0.13 ;
               maksKredit:= 250000000;
               namaPinjaman := kodPi3;
               kondisi2:='t';
               bungaStr:= '0.13';
            end
         else if (kodePeminjam = 'PK004') then
            begin
               gotoxy(37,10);write(kodPi4);
               bunga:=0.11 ;
               maksKredit:= 200000000;
               namaPinjaman := kodPi4;
               kondisi2:='t';
               bungaStr:= '0.11';

            end
         else
             begin
               {jika pilihan di atas tidak ada maka akan menampilkank }
               gotoxy(30,10);write('tidak ada');
               readln;
               gotoxy(30,10);write('                                                 '); {menghapus kalimat 'tidak ada'}
               kondisi:='f';
             end;

   until kondisi2='t';
        {handle jumlah pinjaman}
       repeat
        gotoxy(30,11);readln(jmlPinjaman);

          if (jmlPinjaman > maksKredit ) then
             begin
              gotoxy(30,11);write('tidak boleh melebihi batas ');
              readln;
              gotoxy(30,11);write('                                  ');
              kondisi3:='f';
             end
          else
              begin
                  kondisi3:='t';
                end;

    until kondisi3='t';

    {handle lama pinjaman }
  repeat
   gotoxy(30,12);readln(bulan);
   if(  bulan > 60 ) then
      begin
         gotoxy(35,12);write('Melebehi batas ');
         readln;
         gotoxy(30,12);write('                           ');
         kondisi4:= 'f';
      end
   else
       begin
           gotoxy(36,12);write('Bulan');
           kondisi4:='t';
       end;

  until kondisi4='t' ;

  {handle bunga / bulan }
   bungaHit := (jmlPinjaman * bunga )/100;
   gotoxy(30,13);write(bungaStr,'%');
   gotoxy(37,13);write('Rp.',bungaHit:0:0);

   suran:= (bungaHit) + (jmlPinjaman / bulan);
   {angsuran:= (bungaHit) + (jmlPinjaman / bulan);}
   gotoxy(30,14);write(suran:0:0);

    {Memasukan Data ke Array }
    Anama[i]:=nama;
    AnamaPinjaman[i]:= namaPinjaman;
    Abunga[i]:=bungaStr;
    AjmlPinjaman[i]:=jmlPinjaman;
    Ajangka[i]:= bulan;



   gotoxy(1,18 );write('Apakah ada lagi ? : ');
   gotoxy(22,18);readln(jawaban);
   if(jawaban = 't') then
       begin
          clrscr();
          jawaban :='t';
       end;
  end;





   {Rekap Data }
    z:=3;
    inc(z);
    gotoxy(1,1);write('============================================================================================================');
    gotoxy(1,2);write('No.     Nama Nasabah            Nama Pinjaman                Bunga(%)       Jumlah Pinjaman    Jangka Waktu ');
    gotoxy(1,3);write('============================================================================================================');
    {Mencetak isi array}
     for cetak:=1 to i do
         begin
             gotoxy(1,z);write(cetak);
             gotoxy(9,z);write(Anama[cetak]);
             gotoxy(33,z);write(AnamaPinjaman[cetak]);
             gotoxy(62,z);write(Abunga[cetak]);
             gotoxy(77,z);write('Rp.',AjmlPinjaman[cetak]:0:0);
             gotoxy(97,z);write(Ajangka[cetak],' Bulan');
             inc(z);
         end;



readln;
end.

