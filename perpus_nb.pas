program PERPUSTAKAAN;

uses crt;

CONST
    e = 50;

TYPE
    categories = record
        cat                 : string[10];
    end;
    
    buku = record
        judul_buku          : string[25];
        penulis             : string[20];
        penerbit            : string[20];
        tahun_terbit        : integer;
        kota_penerbit       : string[15];
        kategori            : array[1..2] of categories;
    end;
    
    array_bentukan = array[1..e] of buku;

VAR
    a                       : buku;
    data_buku               : array_bentukan;
    inputan, i, j, pilih    : integer;
    N,temp                  : longint;
    
    
{ 1. INPUT JUMLAH }
PROCEDURE input_jumlah_inputan;
begin
    gotoxy(5, 2);
    write('Jumlah Buku Yang Ingin Di Record : ');
    readln(inputan);
end;

{ 2. INPUT DATA RECORD }
PROCEDURE input_data_buku(jumlah_inputan: integer);
begin
    clrscr;
    for i:=1 to jumlah_inputan do
    begin
        gotoxy(5, 2);
        writeln('BUKU KE-',i);
        gotoxy(5, 3);
        writeln('===================================');
        gotoxy(5, 4);
        write('JUDUL BUKU       : ');readln(data_buku[i].judul_buku);
        gotoxy(5, 5);
        write('PENULIS          : ');readln(data_buku[i].penulis);
        gotoxy(5, 6);
        write('PENERBIT         : ');readln(data_buku[i].penerbit);
        gotoxy(5, 7);
        write('TAHUN TERBIT     : ');readln(data_buku[i].tahun_terbit);
        gotoxy(5, 8);
        write('KOTA PENERBIT    : ');readln(data_buku[i].kota_penerbit);
        for j:=1 to 2 do
        begin
            gotoxy(5, 8+j);
            write('KATEGORI ',j,'   : ');readln(data_buku[i].kategori[j].cat);
        end;
        clrscr;
    end;
end;


{ 3. OUTPUT DATA RECORD }
PROCEDURE output_data_buku(jumlah_inputan: integer);
begin
    writeln('NO', 'NAMA BUKU':15, 'PENULIS':15, 'PENERBIT':15, 'TAHUN TERBIT':15, 'KOTA PENERBIT':15);
    writeln('================================================================================');
    for i:=1 to jumlah_inputan do
    begin with data_buku[i] do
        begin
            writeln(i, judul_buku:15, penulis:15, penerbit:15, tahun_terbit:15, kota_penerbit:15 );
            writeln('     Kategori : 1. ', kategori[1].cat,'  2. ', kategori[2].cat);
            writeln('--------------------------------------------------------------------------------');
            {writeln(judul_buku);
            writeln(penulis);
            writeln(penerbit);
            writeln(tahun_terbit);
            writeln(kota_penerbit);}
        end;
    end;
    writeln('================================================================================');
end;


{ PROGRAM }
begin

    { 1 }
    input_jumlah_inputan;
    
    { 2  }
    input_data_buku(inputan);
    
    { 3 }
    output_data_buku(inputan);
    
end.



