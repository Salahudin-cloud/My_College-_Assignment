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
  suran:real; {variable menampung angsuran}
  bungaHit : real;
  Anama:Array [1..30] of String[30];  {untuk menampung data nama peminjam }
  AnamaPinjaman : Array [1..30] of String[30]; {menampung nama pinjaman}
  Abunga: Array [1..30] of String[30] ; {menampung diskon }
  AjmlPinjaman : Array[1..30] of real;  {menampung jumlah pinjaman}
  Ajangka : array [1..30] of Integer; {menampung jangka waktu bulan }
  jawaban : String ; {untuk mengisi data lagi jika masih ada data }


  {variabel untuk auuto menambah larik}
  z:Integer;


begin
jawaban :='y';
while(jawaban <> 't') do
  begin
  {tampilan }
  inc(i);{untuk menandai pengisian ke berapa }
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

        gotoxy(30,4);readln();{ke baris 4 ke kolom 30 , untuk menerima input register pinjaman dari user dan tidak di tampung ke variabel manapun}
        gotoxy(30,5);readln(nama);{ke baris 5 ke kolom 30 , untuk menerima input nama dari user dan di tampung ke variabel nama }
        gotoxy(65,5);readln();{ke baris 5 ke kolom 65 , untuk menerima input tanggal dari user dan tidak ditampung ke variabel manapun}
        gotoxy(30,6);readln();{ke baris 6 ke kolom 30 , untuk menerima input alamat dari user dan tidak di tampung ke variabel manapun}
  {Handle kode pendiikan }

  repeat
        gotoxy(30,7);readln(kodePendidikan); {ke baris 7 ke kolom 30 , untuk menerima input kode pendidikan}
        {mengecek inputan kode pendidikan }
        if (kodePendidikan = 'J1') then
           begin
               gotoxy(35,7);write(kodPed1);{jika ada makan akan ke baris 7 kolom 35 menuliskan kode pedidikan yang sudah dideklarasikan}
               kondisi:='t'{menentukan kondisi , jika kondisi 't' maka akan keluar dari perulangan repeat until}
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
         gotoxy(30,10);readln(kodePeminjam);{ke baris 10 ke kolom 30 , untuk menerima input kode pinjaman}
         if (kodePeminjam = 'PK001') then
            begin
               gotoxy(37,10);write(kodPi1);
               bunga:=0.10 ; {memberikan isi variabel bunga 0.10 jika kode pemijam = 'PK001'}
               maksKredit:= 2000000000; {memberikan isi variabel maksKredit 20000000000 jika kode pemijam = 'PK001'}
               namaPinjaman := kodPi1; {memberikan isi variabel namaPinjaman jika kode pemijam = 'PK001'}
               kondisi2:='t';
               bungaStr:= '0.10';{variable bungaStr hanya berfungsi untuk menampilkan tulisanya ke layar }
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
        gotoxy(30,11);readln(jmlPinjaman);{ke baris 11 ke kolom 30 , untuk menerima input jumlah pinjaman}

          if (jmlPinjaman > maksKredit ) then {jika jumlah pinjaman melebihi batas kredit }
             begin
              gotoxy(30,11);write('tidak boleh melebihi batas '); {ke baris 11 kolom 30 menampikan persan 'tidak bileh melebihi batas'}
              readln;{untunk menghentikan kode sementara}
              gotoxy(30,11);write('                                  ');{menghapus tulisan 'tidak bleh melebihi batas'}
              kondisi3:='f';{memberikan kondisi3='f' yang berarti jika user salah meng inputkan akan di ulang terus untuk memasukan data yang benar samapai kondisi3='t'}
             end
          else
              begin
                  kondisi3:='t';
                end;

    until kondisi3='t';

    {handle lama pinjaman }
  repeat
   gotoxy(30,12);readln(bulan);{ke baris 12 ke kolom 30 , untuk menerima input bulan}
   if(  bulan > 60 ) then  {jika inputan yang di terima lebih dari 60 maka }
      begin
         gotoxy(35,12);write('Melebehi batas '); {ke bariis 12 kolom 35 menampilkan tulisan 'melebihi batas'}
         readln;{menghentikan kode sementara sampai user menekan tombol enter di keyboard}
         gotoxy(30,12);write('                           ');{menghapus tulisan 'melebihi batas di kolom 30 baris 12 '}
         kondisi4:= 'f';{user akan selalu di berikan inputan berulang sampai kondisi4='t'}
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
    Anama[i]:=nama;{data akan di masukan ke array Anama dan posisi data di tentukan berdasarkan i misal :
    i = 1
    arrat yang kita deklarasikan seperti ini kan ?: Anama:Array [1..30] of String[30]
    nah posisi 1..30 itu artinya , posisi data berada mulai dari nomor 1 samapai 30
    nah arti Anama[i]:= nama artinya : misal
    variabel nama = 'salahudin' maka
    Anama[1]= salahudin , maka posisi nomor 1 akan diisi data dengan nama 'salahudin'
    i akan sering bertambah bergantung jika ada data lagi apa tidak }
    AnamaPinjaman[i]:= namaPinjaman;
    Abunga[i]:=bungaStr;
    AjmlPinjaman[i]:=jmlPinjaman;
    Ajangka[i]:= bulan;


    {menentukan jika ada data lagi apa tidak }
   gotoxy(1,18 );write('Apakah ada lagi ? : ');
   gotoxy(22,18);readln(jawaban);
   if(jawaban = 't') then {jika tidak ada data lagi maka }
       begin
          clrscr();{menghapus semua tulisan di layar }
          jawaban :='t'; {artinya ini akan keluar dari perulangan while }
       end;
  end;





   {Rekap Data }
    z:=3;{kenapa 3 ? karena baris kosong dimulai dari 4 }
    inc(z);{membuat z = 4 (baris kosong baru )}
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

