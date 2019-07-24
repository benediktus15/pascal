program dasar_pemrograman_3;
uses crt;
const
    a=11000;
    b=7650;
    c=6500;

var alas, tinggi, luas, harga_per_liter, jumlah_harga: real;
    menu, n_ganjil_genap, prima, nilai, pembagi, liter: integer;
    lagi: char;
    YN : string;
    jenis_bbm, nama_bbm: string[25];
    
{ Pilihan Menu}
procedure menu_list;
begin
    writeln;
    writeln('Menu :');
    writeln('==================================');
    writeln('1. Rumus segitiga');
    writeln('2. BBM');
    writeln('3. Menentukan Bilangan Ganjil atau Genap');
    writeln('4. Bilangan Prima');
    writeln('==================================');
    writeln;
    write('Pilih Menu : '); readln(menu);
end;

{1. Rumus segitiga}
procedure rumus_segitiga;
begin
    writeln('RUMUS SEGITIGA');
    writeln('==================================');
    
    write('masukan nilai alas = ');
    read(alas);
    write('masukan nilai tinggi = ');
    read(tinggi);
    luas:= alas*tinggi/2;
    writeln('luas segitiga adalah = ',luas:2:2);
    writeln;
    
    Writeln('Apakah anda mau mencoba lagi? (Y/T)?');
	Repeat { repeat the code for at least one time }
		YN := Readkey;
		if YN = 'y' then rumus_segitiga;
		if YN = 't' then menu_list;
		Delay(1800);
	Until (YN = 'y') OR (YN = 't');
	
end;

{2. BBM}
procedure perhitungan_harga_bbm;
begin
    writeln('PERHITUNGAN HARGA BBM');
    writeln('==================================');
    
    writeln('Jenis BBM :');
        writeln('a = PERTAMAX');
        writeln('b = PERTALITE');
        writeln('c = PREMIUM');
        write('Jenis Bahan Bakar : ');readln(jenis_bbm);
          write('Masukan Jumlah Liter : ');readln(liter);
          if(jenis_bbm = 'a')then
            begin
              jumlah_harga:=a*liter;
              harga_per_liter:=a;
              nama_bbm:='PERTAMAX';
            end
          else if(jenis_bbm = 'b')then
            begin
              jumlah_harga:=b*liter;
              harga_per_liter:=b;
              nama_bbm:='PERTALITE';
            end
          else if(jenis_bbm = 'c')then
            begin
              jumlah_harga:=c*liter;
              harga_per_liter:=c;
              nama_bbm:='PREMIUM';
            end;
    writeln(nama_bbm, '      @',harga_per_liter:2:0,'      *      ', liter, ' Liter');
    writeln('Jumlah : Rp. ', jumlah_harga:2:0);
    
    Writeln('Apakah anda mau mencoba lagi? (Y/T)?');
	Repeat { repeat the code for at least one time }
		YN := Readkey;
		if YN = 'y' then perhitungan_harga_bbm;
		if YN = 't' then menu_list;
		Delay(1800);
	Until (YN = 'y') OR (YN = 't');
end;

{3. Bilangan ganjil atau genap}
procedure ganjil_genap;
begin
    writeln('MENENTUKAN BILANGAN GANJIL / GENAP');
    writeln('==================================');
    writeln;
    write('Masukan Nilai : ');
    readln(n_ganjil_genap);
    
    if n_ganjil_genap mod 2 = 0 then
        write('Bilangan ', n_ganjil_genap, ' adalah genap.')
    else
        write('Bilangan ', n_ganjil_genap, ' adalah ganjil.');
    readln;
    
    Writeln('Apakah anda mau mencoba lagi? (Y/T)?');
	Repeat { repeat the code for at least one time }
		YN := Readkey;
		if YN = 'y' then ganjil_genap;
		if YN = 't' then menu_list;
		Delay(1800);
	Until (YN = 'y') OR (YN = 't');
end;

{4. Bilangan Prima}
procedure bilangan_prima;
begin
    writeln('BILANGAN PRIMA');
    writeln('==================================');
    
    prima:=1;
    while prima <= 20 do
    begin
        nilai:=0;
        pembagi:=1;
    while pembagi <= prima do
        begin
            if prima mod pembagi=0 then
                nilai:=nilai+1;
                pembagi:=pembagi+1;
        end;
            if nilai=2 then
                begin
                    write(' ',prima);
                    prima:=prima+1;
                end
            else
                prima:=prima+1;
            end;
    readln;
    
    Writeln('Apakah anda mau mencoba lagi? (Y/T)?');
	Repeat { repeat the code for at least one time }
		YN := Readkey;
		if YN = 'y' then bilangan_prima;
		if YN = 't' then menu_list;
		Delay(1800);
	Until (YN = 'y') OR (YN = 't');
end;


{Kondisi Pemilihan Menu}
procedure choose_menu(pilihan: integer);
begin

    {*if (pilihan = 1) then
        begin
            writeln('yes 1');
            write('masukan nilai alas = ');
            read(alas);
            write('masukan nilai tinggi = ');
            read(tinggi);
            luas:= alas*tinggi/2;
            write('luas segitiga adalah = ',luas:2:2);
            readln;
        end
    else if (pilihan = 2) then
        begin
            writeln('yes 2');
        end
    else if (pilihan = 3) then
        begin
            writeln('yes 3');
        end
    else if (pilihan = 4) then
        begin
            writeln('yes 4');
        end
    else 
        begin
            menu_list;
        end;*}
        
    case pilihan of
        1: 
        begin
            writeln;
            rumus_segitiga;
        end;
        2: 
        begin
            writeln;
            perhitungan_harga_bbm;
        end;
        3: 
        begin
            writeln;
            ganjil_genap;
        end;
        4: 
        begin
            writeln;
            bilangan_prima;
        end;
    else
        {menu_list;}
        writeln('Terimakasih!');
    end;
    
end;

{Execute}
begin

    clrscr;
    
    gotoxy(4,2);
    menu_list;
    choose_menu(menu);

end.
