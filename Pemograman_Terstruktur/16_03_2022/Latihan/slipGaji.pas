program slipGaji;
uses crt;
var
  nama,nik,status  :string ;
  jumlahAnak, presensi,idStatus,gajiPokok : integer ;
   tunjangan , tunjanganIstri , tunjanganAnak, totalGaji,uangMakan :real ;
begin
  {tampilan}
  gotoxy(1,1); writeln('PT.Kirana Sejati Sejahtera');
  gotoxy(1,2); writeln('Jl.Magelang-Yogyakarta Km.34');
  gotoxy(1,3); writeln('Telp. 0293-321 456 , fax.0293-445 776');
  gotoxy(1,4); writeln('==============================================');
  gotoxy(10,5); writeln('SLIP GAJI KARYAWAN');
  gotoxy(1,6); writeln('==============================================');
  gotoxy(1,7); writeln('NIK                 : ');
  gotoxy(1,8); writeln('Nama Karyawan       : ');
  gotoxy(1,9); writeln('Status              : ');
  gotoxy(1,10);writeln('Jumlah ANak         : ');
  gotoxy(1,11);writeln('Presensi            : ');
  gotoxy(1,12); writeln('-------------------------------------------------- ');
  gotoxy(1,13); writeln('Rincian Status     :  ');
  gotoxy(1,14); writeln('Gaji Pokok         : RP.');
  gotoxy(1,15); writeln('Tunjangan Istri    : RP.');
  gotoxy(1,16); writeln('Tunjangan Anak     : RP.');
  gotoxy(1,17); writeln('Uang Makan         : RP.');
  gotoxy(1,18); writeln('Total Gaji         : RP.');
  {proses }
  gotoxy(23,7);readln(nik);
  gotoxy(23,8);readln(nama);
  gotoxy(23,9);readln(idStatus);
  if (idStatus =  1 )  then
begin
     gotoxy(24,9); write('.menikah');
     tunjanganIstri := 1000000;
     gotoxy(23,10);readln(jumlahAnak);
     gotoxy(23,11); readln(presensi);
     gotoxy(25,14); readln(gajiPokok);
     if (jumlahAnak <= 2 ) then
       begin
            tunjanganAnak := jumlahAnak * 250000;
            uangMakan := presensi * 40000;
            totalGaji := uangMakan + tunjanganIstri + tunjanganAnak + GajiPokok ;
            gotoxy(25,15); write(tunjanganIstri:2:0);
            gotoxy(25,16); write(tunjanganAnak:2:0);
            gotoxy(25,17); write(uangMakan:2:0);
            gotoxy(25,18); write(totalGaji:2:0);
       end
     else
       begin
          tunjanganAnak := 2 * 250000;
          uangMakan := presensi * 40000;
          totalGaji := uangMakan + tunjanganIstri + tunjanganAnak + GajiPokok ;
          gotoxy(25,15); write(tunjanganIstri:2:0);
          gotoxy(25,16); write(tunjanganAnak:2:0);
          gotoxy(25,17); write(uangMakan:2:0);
          gotoxy(25,18); write(totalGaji:2:0);
       end;
  end
  else
    begin
       gotoxy(24,9); write('.single');
       tunjanganIstri:= 0;
       tunjanganAnak := 0 ;
       gotoxy(23,10);readln(jumlahAnak);
       gotoxy(23,11); readln(presensi);
       gotoxy(25,14); readln(gajiPokok);
       uangMakan := presensi * 40000;
       totalGaji := uangMakan + tunjanganIstri + tunjanganAnak + GajiPokok ;
       gotoxy(25,15); write(tunjanganIstri:1:0);
       gotoxy(25,16); write(tunjanganAnak:1:0);
       gotoxy(25,17); write(uangMakan:2:0);
       gotoxy(25,18); write(totalGaji:2:0);
    end;



readln;
end.

