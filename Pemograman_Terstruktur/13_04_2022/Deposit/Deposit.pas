program Deposit;
uses crt;
var
  jawaban,kodePekerjaan,idDeposito,namaDeposito, jangkaWaktu,bungaTampilan:string;
  i:integer;
  uangDeposit:LongInt;
  bulanan:real;
  bunga:real;
begin

  {tampilan }
  jawaban:='y';
  i:=1;
  while (jawaban = 'y') do
      begin
        gotoxy(1,1);write('Bank "SICABE" ');
        gotoxy(1,2);write('Jl.Magelang-Purwokerto KM 13 ' );
        gotoxy(1,3);write('Telp. 0293-210 106,FAX.0293-150 212');
        gotoxy(1,4);write('Pendataan Nasabah ');
        gotoxy(1,5);write('==============================================================');
        gotoxy(5,6);write('NO. Nasabah         :');
        gotoxy(50,6);write('Tanggal: ');
        gotoxy(5,7);write('Nama Nasabah        :');
        gotoxy(50,7);write('Nasabah Ke : ');
        gotoxy(62,7);write(i);
        gotoxy(5,8);write('ID Pekerjeaan        :');
        gotoxy(5,9);write('Kode Jenis Deposito  :');
        gotoxy(5,10);write('Jangka Waktu        :');
        gotoxy(5,11);write('Bunga Pinjaman      :');
        gotoxy(5,12);write('Jumlah Deposito     :Rp. ');
        gotoxy(5,13);write('Bunga/Bulan         :Rp.');
        gotoxy(1,14);write('=================================================================');
        gotoxy(26,6);readln;
        gotoxy(58,6);readln;
        gotoxy(26,7);readln;
        {proses}
        {handle pekerjaan}
        gotoxy(27,8);readln(kodePekerjaan);
        if(kodePekerjaan = 'K001')then
         begin
            gotoxy(32,8);write('(PNS)');
         end
        else if(kodePekerjaan = 'K002') then
          begin
            gotoxy(32,8);write('(PTNI/Polri)');
         end
        else if (kodePekerjaan = 'K003') then
         begin
            gotoxy(32,8);write('(Karyawan Swaasta)');
         end
         else if (kodePekerjaan = 'K004') then
         begin
            gotoxy(32,8);write('(Wiarusaha)');
         end
         else
         begin
           gotoxy(32,8);write('(lainya)');
         end;

         {handle deposito}
          gotoxy(27,9);readln(idDeposito);
         if (idDeposito = '001') then
         begin
             namaDeposito:='Short Deposit';
             jangkaWaktu:='3 Bulan';
             bungaTampilan:='0,6% per bulan';



             bunga:= 0.6;

             gotoxy(31,9);write(namaDeposito);
             gotoxy(26,10);write(jangkaWaktu);
             gotoxy(26,11);write(bungaTampilan);
             gotoxy(29,12);readln(uangDeposit);
              if(uangDeposit > 30000000 ) then
               begin
                   clrscr;
                   gotoxy(50,50);write('maaf kami tidak bisa melayani');
               end
              else
              begin
                 bulanan:=bunga * uangDeposit * 90 / 365;
                 gotoxy(29,13);write(bulanan:0:0);
              end;
         end
         else if(idDeposito = '002') then
         begin
             namaDeposito:='Middle Deposit';
             jangkaWaktu:='6 Bulan';

             bungaTampilan:='0,7% per bulan';
             bunga:= 0.7;
             gotoxy(31,9);write(namaDeposito);
             gotoxy(26,10);write(jangkaWaktu);
             gotoxy(26,11);write(bungaTampilan);
              gotoxy(29,12);readln(uangDeposit);
              if(uangDeposit > 100000000 ) then
               begin
                   clrscr;
                   gotoxy(50,50);write('maaf kami tidak bisa melayani');
               end
               else
              begin
                 bulanan:=bunga * uangDeposit * 90 / 365;
                 gotoxy(29,13);write(bulanan:0:0);
              end;
         end
         else
         begin
             namaDeposito:='Long Deposit';
             jangkaWaktu:='12 Bulan';
             bungaTampilan:='0,9% per bulan';
              uangDeposit:=500000000;
             bunga:= 0.9;
             gotoxy(31,9);write(namaDeposito);
             gotoxy(26,10);write(jangkaWaktu);
             gotoxy(26,11);write(bungaTampilan);
               if(uangDeposit > 500000000 ) then
               begin
                   clrscr;
                   gotoxy(50,50);write('maaf kami tidak bisa melayani');
               end
                else
              begin
                 bulanan:=bunga * uangDeposit * 90 / 365;
                 gotoxy(29,13);write(bulanan:0:0);
              end;
         end;

        gotoxy(20,15);write('apakah anda ingin memasukan lagii? : ');
        readln(jawaban);
        clrscr;
        inc(i);
        if(jawaban = 't') then
          begin
            jawaban:='t';
          end;
      end;
  readln;
end.

