program project1;
uses crt;
var
  jawaban,inputId:String;
  inputJumlah,inputUmur,inputEkor,jSebelum :Integer;
  potongan,totalBayar,total:real;

begin
 jawaban:= 'y';

 while(jawaban = 'y' ) do
   begin
     clrscr();
     gotoxy(1,1);write('Jl.Pandean Lamper No. 15A');
     gotoxy(1,3);write('Desa Parai-Sidodadi');
     gotoxy(1,4);write('Telp. 0813 5544 1213');
     gotoxy(1,6);write('-------------------------------------');
     gotoxy(1,7);write('Tanggal Penjualan  : ');
     gotoxy(1,8);write('-------------------------------------');
     gotoxy(1,10);write('Data Konsumen ');
     gotoxy(1,11);write('----------------------');
     gotoxy(1,12);write('Nama Konsumen        : ');
     gotoxy(1,13);write('Alamat Konsumen      : ');
     gotoxy(1,14);write('No Hp                : ');
     gotoxy(1,16);write('Detail Kambing/Domba  ');
     gotoxy(1,17);write('------------------------');
     gotoxy(1,18);write('ID Jenis             : ');
     gotoxy(30,18);write('Jenis  :  ');
     gotoxy(5,19);write('[K1 : Kambiing Jawa ; D1:Domba;E1 :Kambing Etawa;G1 :Kambing Gembrong]');
     gotoxy(1,20);write('Umur Kambing/Domba   : ');
     gotoxy(27,20);write('Bulan');
     gotoxy(35,20);write('Harga/Ekor : Rp. ');
     gotoxy(1,21);write('Jumlah Beli          : ');
     gotoxy(27,21);write('Ekor');
     gotoxy(35,21);write('Potongan   :  ');
     gotoxy(50,21);write('%');
     gotoxy(1,23);write('Detail Bayar ');
     gotoxy(1,24);write('-------------------------------');
     gotoxy(1,25);write('Jumlah Bayar Sebelum Potongan : Rp.');
     gotoxy(1,26);write('Potongan Harga                : Rp.');
     gotoxy(1,27);write('Total Bayar                   : Rp.');
     {Bagian Proses}
     gotoxy(23,7);readln();
     gotoxy(24,12);readln();
     gotoxy(24,13);readln();
     gotoxy(24,14);readln();
     {handle id}
     gotoxy(24,18);readln(inputId);
     if(inputId = 'K1' ) then
       begin
          gotoxy(40,18);write('Kambing Jawa');
       end
     else if(inputId = 'D1') then
       begin
          gotoxy(40,18);write('Domba');
       end
     else if(inputId = 'E1') then
       begin
          gotoxy(40,18);write('Kambing Etawa');
       end
     else
       begin
         gotoxy(40,18);write('Kambing Gembong');
       end;
     {handle umur}
     gotoxy(24,20);readln(inputUmur);
     if(inputId = 'K1') then
      begin
       if((inputUmur = 1 ) Or (inputUmur <= 3 )) then
         begin
            gotoxy(50,20);write(' 600.000');
         end
       else if((inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 )) then
         begin
             gotoxy(50,20);write(' 2.000.000');
         end
       else if(inputUmur > 6 ) then
         begin
             gotoxy(50,20);write(' 3.000.000');
         end
       else
        begin
          clrscr();
          gotoxy(50,10);write('Maaf Yang anda inputkan tidak ada');
        end;
       end
     else if (inputId = 'D1') then
         begin
            if((inputUmur = 1 ) Or (inputUmur <= 3 )) then
           begin
              gotoxy(50,20);write(' 450.000');
           end
         else if((inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 )) then
           begin
               gotoxy(50,20);write(' 1.500.000');
           end
         else if(inputUmur > 6 ) then
           begin
               gotoxy(50,20);write(' 2.000.000');
           end
         else
          begin
            clrscr();
            gotoxy(50,10);write('Maaf Yang anda inputkan tidak ada');
          end;
       end
     else if (inputId = 'E1') then
         begin
           if((inputUmur = 1 ) Or (inputUmur <= 3 )) then
           begin
              gotoxy(50,20);write(' 700.000');
           end
         else if((inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 )) then
           begin
               gotoxy(50,20);write(' 2.000.000');
           end
         else if(inputUmur > 6 ) then
           begin
               gotoxy(50,20);write(' 4.500.000');
           end
         else
          begin
            clrscr();
            gotoxy(50,10);write('Maaf Yang anda inputkan tidak ada');
          end;
       end
     else
      begin
        if((inputUmur = 1 ) Or (inputUmur <= 3 )) then
         begin
            gotoxy(50,20);write(' 750.000');
         end
       else if((inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 )) then
         begin
             gotoxy(50,20);write(' 2.500.000');
         end
       else if(inputUmur > 6 ) then
         begin
             gotoxy(50,20);write(' 5.000.000');
         end
       else
        begin
          clrscr();
          gotoxy(50,10);write('Maaf Yang anda inputkan tidak ada');
        end;
      end;
      {Handle input beli }
      gotoxy(24,21);readln(inputEkor);
      if((inputEkor = 1 ) or (inputEkor = 2 )) then
        begin
         gotoxy(48,21);write('0');
        end
      else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
        begin
          gotoxy(48,21);write('5');
        end
      else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
        begin
          gotoxy(48,21);write('7');
        end
      else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
        begin
          gotoxy(48,21);write('10');
        end
      else
        begin
           clrscr();
           gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
        end;
      {handle jumlah sebelum potongan}
         {jika K1}
      if(inputId = 'K1')then
        begin
         {jika umur <= 3 }
         if( (inputUmur = 1) or (inputUmur <= 3 ))then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 600000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 600000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 600000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 600000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
         {jika input <= 6 }
        else if( (inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 ) )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 2000000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 2000000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
        {jika iinput umur > 6 }
         else if( inputUmur > 6 )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 3000000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 3000000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 3000000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 3000000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
         else
           begin
              clrscr();
              gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
           end;
        end
      {Jika input D1 }
      else if (inputId = 'D1') then
        begin
         {jika umur <= 3 }
         if( (inputUmur = 1) or (inputUmur <= 3 ))then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 450000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 450000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 450000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 450000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
         {jika input <= 6 }
        else if( (inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 ) )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 1500000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 1500000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 1500000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 1500000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
        {jika input umur > 6 }
        else if( inputUmur > 6 )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 2000000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 2000000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
        end
      {jika input E1}
      else if (inputId = 'E1') then
        begin
       {jika umur <= 3 }
         if( (inputUmur = 1) or (inputUmur <= 3 ))then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 700000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 700000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 700000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 700000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
       {jika input <= 6 }
        else if( (inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 ) )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 2000000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 2000000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 2000000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
        {jika input umur > 6 }
        else if( inputUmur > 6 )then
           begin
            {jika input ekor  < = 2 }
            if( (inputEkor = 1) or (inputEkor = 2)) then
              begin
               jSebelum := 4500000 * inputEkor;
               potongan := 0;
               total := jSebelum - potongan;
               gotoxy(36,25);write(jSebelum:0);
               gotoxy(36,26);write(potongan:0:0);
               gotoxy(36,27);write(total:0:0);
              end
            {jika input ekor  <= 5 and input ekor   = 3    }
              else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                begin
                   jSebelum := 4500000 * inputEkor;
                   potongan := 0.05 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);

                 end
              {jika input ekor  = 6 and input ekor  <= 9 }
              else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                begin
                 jSebelum := 4500000 * inputEkor;
                 potongan := 0.07 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor >= 10 }
              else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                begin
                 jSebelum := 4500000 * inputEkor;
                 potongan := 0.1 * jSebelum;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              else
                begin
                   clrscr();
                   gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                end;
           end
         end
      {jika input  G1}
      else if(inputId = 'G1') then
        begin
         {jika umur <= 3 }
           if( (inputUmur = 1) or (inputUmur <= 3 ))then
             begin
              {jika input ekor  < = 2 }
              if( (inputEkor = 1) or (inputEkor = 2)) then
                begin
                 jSebelum := 750000 * inputEkor;
                 potongan := 0;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor  <= 5 and input ekor   = 3    }
                else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                  begin
                     jSebelum := 750000 * inputEkor;
                     potongan := 0.05 * jSebelum;
                     total := jSebelum - potongan;
                     gotoxy(36,25);write(jSebelum:0);
                     gotoxy(36,26);write(potongan:0:0);
                     gotoxy(36,27);write(total:0:0);

                   end
                {jika input ekor  = 6 and input ekor  <= 9 }
                else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                  begin
                   jSebelum := 750000 * inputEkor;
                   potongan := 0.07 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                {jika input ekor >= 10 }
                else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                  begin
                   jSebelum := 750000 * inputEkor;
                   potongan := 0.1 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                else
                  begin
                     clrscr();
                     gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                  end;
             end
         {jika input <= 6 }
          else if( (inputUmur = 6 ) or (inputUmur <=6 ) and (inputUmur > 3 ) )then
             begin
              {jika input ekor  < = 2 }
              if( (inputEkor = 1) or (inputEkor = 2)) then
                begin
                 jSebelum := 2500000 * inputEkor;
                 potongan := 0;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor  <= 5 and input ekor   = 3    }
                else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                  begin
                     jSebelum := 2500000 * inputEkor;
                     potongan := 0.05 * jSebelum;
                     total := jSebelum - potongan;
                     gotoxy(36,25);write(jSebelum:0);
                     gotoxy(36,26);write(potongan:0:0);
                     gotoxy(36,27);write(total:0:0);

                   end
                {jika input ekor  = 6 and input ekor  <= 9 }
                else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                  begin
                   jSebelum := 2500000 * inputEkor;
                   potongan := 0.07 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                {jika input ekor >= 10 }
                else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                  begin
                   jSebelum := 2000000 * inputEkor;
                   potongan := 0.1 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                else
                  begin
                     clrscr();
                     gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                  end;
             end
          {jika input umur > 6 }
          else if( inputUmur > 6 )then
             begin
              {jika input ekor  < = 2 }
              if( (inputEkor = 1) or (inputEkor = 2)) then
                begin
                 jSebelum := 5000000 * inputEkor;
                 potongan := 0;
                 total := jSebelum - potongan;
                 gotoxy(36,25);write(jSebelum:0);
                 gotoxy(36,26);write(potongan:0:0);
                 gotoxy(36,27);write(total:0:0);
                end
              {jika input ekor  <= 5 and input ekor   = 3    }
                else if((inputEkor = 3 ) or (inputEkor <= 5 ) and (inputEkor > 2)) then
                  begin
                     jSebelum := 5000000 * inputEkor;
                     potongan := 0.05 * jSebelum;
                     total := jSebelum - potongan;
                     gotoxy(36,25);write(jSebelum:0);
                     gotoxy(36,26);write(potongan:0:0);
                     gotoxy(36,27);write(total:0:0);

                   end
                {jika input ekor  = 6 and input ekor  <= 9 }
                else if ((inputEkor = 6) or (inputEkor <= 9) and (inputEkor > 5 )) then
                  begin
                   jSebelum := 5000000 * inputEkor;
                   potongan := 0.07 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                {jika input ekor >= 10 }
                else if ((inputEkor >= 10 ) and (inputEkor >9 )) then
                  begin
                   jSebelum := 5000000 * inputEkor;
                   potongan := 0.1 * jSebelum;
                   total := jSebelum - potongan;
                   gotoxy(36,25);write(jSebelum:0);
                   gotoxy(36,26);write(potongan:0:0);
                   gotoxy(36,27);write(total:0:0);
                  end
                else
                  begin
                     clrscr();
                     gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
                  end;
             end
         end
      else
       begin
            clrscr();
            gotoxy(50,20);write('Maaf Input yang anda masukan tidak ada');
       end;

     {proses menginputkan data baru}
     readln;
     clrscr();
    gotoxy(50,50);write('APAKAH INGIN MENGISI DATA LAGI ?(y/t):');
    readln(jawaban);
    if(jawaban = 't' OR jawaban = 'T') then
      begin
        jawaban:= 't';
      end
     else
      begin
        jawaban :='y';
      end;
     end;

   end.




end.

