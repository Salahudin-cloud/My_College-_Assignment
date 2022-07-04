program Pasien_Poliklinik;
uses crt;
var
  idPasien,i,jenisPasien,biayaPendaftaran,BiayaPeriksa,totalBayar : Integer;
  jawaban,idKaryawan,kodePoli:string;
begin
{tampilan}
  jawaban:= 'y';
  i:=1;
{proses}
  while (jawaban = 'y') do
    begin
      {Tampilan}
      gotoxy(1,1);write('Poliklinik Mugi Sehat Selalu');
      gotoxy(1,2);write('Jl.Pandean Lamper No. 12-14.Semarang');
      gotoxy(1,3);write('Telp. 0811 3232 0987');
      gotoxy(1,4);write('=============================================================');
      gotoxy(5,5);write('No.Induk Berobat        :  NIPA');
      gotoxy(36,5);write(i);
      gotoxy(43,5);write('Tanggal Periksa : ');
      gotoxy(5,6);write('ID Karyawan             : ');
      gotoxy(1,7);write('=============================================================');
      gotoxy(5,8);write('Data Pasien ');
      gotoxy(5,9);write('Nama Pasien            :');
      gotoxy(5,10);write('Alamat Pasien          :');
      gotoxy(5,11);write('Telepon                :');
      gotoxy(5,12);write('Jenis Pasien           :');
      gotoxy(20,13);write('->Pilihan: 1 : Pasien Umum ; 2:Pasien BPJS<-');
      gotoxy(5,14);write('Keluhan                :');
      gotoxy(5,15);write('Kode Poli Yang Dituju  :');
      gotoxy(5,16);write('Dokter Poli            :');
      gotoxy(1,17);write('============================================================');
      gotoxy(5,18);write('Detail Bayar ');
      gotoxy(5,19);write('Biaya Pendaftara       : Rp.');
      gotoxy(5,20);write('Biaya Pemeriksaan      : Rp.');
      gotoxy(5,21);write('Total Bayar            : Rp.');
      gotoxy(1,22);write('============================================================');
      {proses}
      gotoxy(61,5);readln;
      {Handle ID Karyawan}
      gotoxy(31,6);readln(idKaryawan);
      if(idKaryawan = 'NIK01') then
       begin
            gotoxy(37,6);write('Erna Tri Winarsih');
       end
      else if (idKaryawan = 'NIK02') then
       begin
            gotoxy(37,6);write('Irawati Putri');
       end
      else
       begin
            gotoxy(37,6);write('Ratri Damayanti');
       end;
      {--------------------------------}
      gotoxy(30,9);readln;
      gotoxy(30,10);readln;
      gotoxy(30,11);readln;
      {Handle Jenis Pasien }
      gotoxy(30,12);readln(jenisPasien);
      if (jenisPasien = 1) then
       begin
           gotoxy(31,12);write('.Pasien Umum');
       end
      else
       begin
         gotoxy(31,12);write('.pasien BPJS');
       end;
      {----------------------------------}
      gotoxy(30,14);readln;
      {handle Poli,dokter,Detail Bayar}
      gotoxy(30,15);readln(kodePoli);
      if(kodePoli = 'POG') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=60000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli Gigi)');
               gotoxy(30,16);write('Dr.Maya');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli Gigi)');
             gotoxy(30,16);write('Dr.Maya');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else if(kodePoli = 'POD') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=80000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli Penyakit Dalam)');
               gotoxy(30,16);write('Dr.Bintang,Sp,PD');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli Penyakit Dalam)');
             gotoxy(30,16);write('Dr.Bintang,Sp,PD');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else if (kodePoli = 'POA') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=60000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli Anak)');
               gotoxy(30,16);write('Dr.Mahawari,Sp,A');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli Anak)');
             gotoxy(30,16);write('Dr.Mahawari,Sp,A');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else if (kodePoli = 'POT') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=50000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli THT)');
               gotoxy(30,16);write('Dr.Andra,Sp,THT');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli THT)');
             gotoxy(30,16);write('Dr.Andra,Sp,THT');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else if (kodePoli = 'POK') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=80000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli Kandunga)');
               gotoxy(30,16);write('Dr.Alia,Sp,OG');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli Kandungan)');
             gotoxy(30,16);write('Dr.Alia,Sp,OG');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else if(kodePoli = 'POU') then
       begin
          if(jenisPasien = 1) then
           begin
               biayaPeriksa:=30000;
               biayaPendaftaran:=40000;
               gotoxy(33,15);write('(Poli Umum)');
               gotoxy(30,16);write('Dr.Hani');
               totalBayar:= biayaPeriksa + biayaPendaftaran ;
               gotoxy(33,19);write(biayaPendaftaran);
               gotoxy(33,20);write(biayaPeriksa);
               gotoxy(33,21);write(totalBayar);
           end
          else
           begin
             biayaPeriksa:=0;
             biayaPendaftaran:=0;
             gotoxy(33,15);write('(Poli Umum)');
             gotoxy(30,16);write('Dr.Hani');
             totalBayar:= biayaPeriksa + biayaPendaftaran ;
             gotoxy(33,19);write(biayaPendaftaran);
             gotoxy(33,20);write(biayaPeriksa);
             gotoxy(33,21);write(totalBayar);
           end;
       end
      else
           begin
             clrscr;
             gotoxy(50,10);write('Maaf,kami Tidak Bisa Melayani');
           end;

      gotoxy(5,26);write('apakah mau masukan data lagi ? (y/t) : ');
      readln(jawaban);
      clrscr;
      inc(i);
      if(jawaban = 't') then
       begin
            jawaban := 't';
       end;
    end;
readln;
end.

