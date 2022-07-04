program sewaKapal;
uses crt;
var
  ukuranKapal,sewaHari:integer;
  diskonSewa,sHari,sMinggu,tHari,tMinggu : real;
begin
  gotoxy(1,1);writeln('Telp. 0813 8332 9901');
  gotoxy(1,2);writeln('=================================================');
  gotoxy(1,3);writeln('No Registrasi : ');
  gotoxy(35,3);writeln('Tanggal : ');
  gotoxy(1,4);writeln('=================================================');
  gotoxy(1,5);writeln('Detail Transaksi sewa Kapal ');
  gotoxy(1,6);writeln('Nama Penyewa    : ');
  gotoxy(1,7);writeln('Alamat Penyewa  : ');
  gotoxy(1,8);writeln('Jaminan Penyewa : ');
  gotoxy(1,9);writeln('Detail Kapal ');
  gotoxy(1,10);writeln('Ukuran Kapal        : ');
  gotoxy(30,10);writeln(' Kaki');
  gotoxy(8,11);writeln('sewa/Minggu  : Rp. ');
  gotoxy(8,12);writeln('Sewa Hari    : Rp. ');
  gotoxy(1,13);writeln('Lamaa Sewa          : ');
  gotoxy(30,13);writeln(' Hari');
  gotoxy(8,14);writeln('Minggu       : ');
  gotoxy(8,15);writeln('Hari         : ');
  gotoxy(1,16);writeln('Detail Bayar ');
  gotoxy(1,17);writeln('Sewa Selama ');
  gotoxy(16,17);writeln(' Minggu     : Rp. ');
  gotoxy(1,18);writeln('Sewa Selama ');
  gotoxy(16,18);writeln('Hari        : Rp. ');
  gotoxy(1,19);writeln('Potongan                   : Rp.');
  gotoxy(1,20);writeln('Total Bayar                : Rp.');
  gotoxy(1,21);writeln('Fee Donatelo(20%)          : Rp.');
  {proses}
  gotoxy(17,3);readln();
  gotoxy(45,3);readln();
  gotoxy(19,6);readln();
  gotoxy(19,7);readln();
  gotoxy(19,8);readln();
  gotoxy(25,10);readln(ukuranKapal);
  if(ukuranKapal = 20 ) then
    begin
       gotoxy(26,11);write('3.000.000');
       gotoxy(26,12);write('18.000.000');
    end
  else if (ukuranKapal = 36 ) then
    begin
       gotoxy(26,11);write('5.000.000');
       gotoxy(26,12);write('30.000.000');
    end
  else if (ukuranKapal = 51) then
    begin
       gotoxy(26,11);write('7.000.000');
       gotoxy(26,12);write('42.000.000');
    end
  else if (ukuranKapal = 63 ) then
    begin
       gotoxy(26,11);write('8.000.000');
       gotoxy(26,12);write('52.000.000');
    end
  else
  begin
    clrscr();
    gotoxy(50,10);write('Maaf yang anda inputkan tidak ada ');
  end;
 gotoxy(25,13);readln(sewaHari);
   if( (sewaHari = 1) or (sewaHari <=2)   ) then
        begin
            diskonSewa := 0.01 ;
           if (ukuranKapal = 20 ) then
           begin
             sHari := diskonSewa * 3000000;
             tHari := 3000000 -  shari;
             sMinggu := diskonSewa * 18000000;
             tminggu := 18000000 - sminggu;
             gotoxy(26,14);write(tHari:2:0);
             gotoxy(26,15);write(tMinggu:2:0);
           end
            else if (ukuranKapal = 36 ) then
        begin
           sHari := diskonSewa * 5000000;
           tHari := 5000000 -  shari;
           sMinggu := diskonSewa * 30000000;
           tminggu := 30000000 - sminggu;
           gotoxy(26,14);write(tHari:2:0);
           gotoxy(26,15);write(tMinggu:2:0);
        end
      else if (ukuranKapal = 51) then
        begin
             sHari := diskonSewa * 7000000;
             tHari := 7000000 -  shari;
             sMinggu := diskonSewa * 42000000;
             tminggu := 42000000 - sminggu;
             gotoxy(26,14);write(tHari:2:0);
             gotoxy(26,15);write(tMinggu:2:0);
        end
      else if (ukuranKapal = 63 ) then
        begin
           sHari := diskonSewa * 8000000;
           tHari := 8000000 -  shari;
           sMinggu := diskonSewa * 52000000;
           tminggu := 52000000 - sminggu;
           gotoxy(26,14);write(tHari:2:0);
           gotoxy(26,15);write(tMinggu:2:0);
        end
      else
      begin
        clrscr();
        gotoxy(50,10);write('Maaf yang anda inputkan tidak ada ');
      end;
        end
  else if ((sewaHari = 3 )  or (sewaHari > 2 ) and (sewaHari <= 6))  then
      begin
          diskonSewa := 0.05;
         if (ukuranKapal = 20 ) then
         begin
           sHari := diskonSewa * 3000000;
           tHari := 3000000 -  shari;
           sMinggu := diskonSewa * 18000000;
           tminggu := 18000000 - sminggu;
           gotoxy(26,14);write(tHari:2:0);
           gotoxy(26,15);write(tMinggu:2:0);
         end
          else if (ukuranKapal = 36 ) then
      begin
         sHari := diskonSewa * 5000000;
         tHari := 5000000 -  shari;
         sMinggu := diskonSewa * 30000000;
         tminggu := 30000000 - sminggu;
         gotoxy(26,14);write(tHari:2:0);
         gotoxy(26,15);write(tMinggu:2:0);
      end
    else if (ukuranKapal = 51) then
      begin
           sHari := diskonSewa * 7000000;
           tHari := 7000000 -  shari;
           sMinggu := diskonSewa * 42000000;
           tminggu := 42000000 - sminggu;
           gotoxy(26,14);write(tHari:2:0);
           gotoxy(26,15);write(tMinggu:2:0);
      end
    else if (ukuranKapal = 63 ) then
      begin
         sHari := diskonSewa * 8000000;
         tHari := 8000000 -  shari;
         sMinggu := diskonSewa * 52000000;
         tminggu := 52000000 - sminggu;
         gotoxy(26,14);write(tHari:2:0);
         gotoxy(26,15);write(tMinggu:2:0);
      end
    else
      begin
        clrscr();
        gotoxy(50,10);write('Maaf yang anda inputkan tidak ada ');
      end;
    end
  else if (sewaHari >= 7 ) then
    begin
         diskonSewa := 0.07;
        if (ukuranKapal = 20 ) then
        begin
          sHari := diskonSewa * 3000000;
          tHari := 3000000 -  shari;
          sMinggu := diskonSewa * 18000000;
          tminggu := 18000000 - sminggu;
          gotoxy(26,14);write(tHari:2:0);
          gotoxy(26,15);write(tMinggu:2:0);
        end
         else if (ukuranKapal = 36 ) then
     begin
        sHari := diskonSewa * 5000000;
        tHari := 5000000 -  shari;
        sMinggu := diskonSewa * 30000000;
        tminggu := 30000000 - sminggu;
        gotoxy(26,14);write(tHari:2:0);
        gotoxy(26,15);write(tMinggu:2:0);
     end
   else if (ukuranKapal = 51) then
     begin
          sHari := diskonSewa * 7000000;
          tHari := 7000000 -  shari;
          sMinggu := diskonSewa * 42000000;
          tminggu := 42000000 - sminggu;
          gotoxy(26,14);write(tHari:2:0);
          gotoxy(26,15);write(tMinggu:2:0);
     end
   else if (ukuranKapal = 63 ) then
     begin
        sHari := diskonSewa * 8000000;
        tHari := 8000000 -  shari;
        sMinggu := diskonSewa * 52000000;
        tminggu := 52000000 - sminggu;
        gotoxy(26,14);write(tHari:2:0);
        gotoxy(26,15);write(tMinggu:2:0);
     end
   else
     begin
       clrscr();
       gotoxy(50,10);write('Maaf yang anda inputkan tidak ada ');
     end;
   end
  else
    begin
      clrscr();
      gotoxy(50,10);write('Maaf yang anda inputkan tidak ada ');
    end;

  gotoxy(14,17);wirte(sewaHari);
    gotoxy(14,18);wirte(sewa);






  readln;
end.

