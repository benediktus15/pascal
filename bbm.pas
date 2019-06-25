Program BBM;
uses crt;
const
    a=11000;
    b=7650;
    c=6500;
var
    liter:integer;
    harga_per_liter:real;
    jumlah_harga:real;
    jenis_bbm:string[25];
    nama_bbm:string[25];
    transaksi_lagi:char;
begin
    clrscr;
    transaksi_lagi:='y';
    while (transaksi_lagi='y') or (transaksi_lagi='Y') do
    begin
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
            end;
          if(jenis_bbm = 'b')then
            begin
              jumlah_harga:=b*liter;
              harga_per_liter:=b;
              nama_bbm:='PERTALITE';
            end;
          if(jenis_bbm = 'c')then
            begin
              jumlah_harga:=c*liter;
              harga_per_liter:=c;
              nama_bbm:='PREMIUM';
            end;
        {else
        writeln('Jenis BBM Tidak Tersedia');}
        writeln(nama_bbm, '      @',harga_per_liter:2:0,'      *      ', liter, ' Liter');
        writeln('Jumlah : Rp. ', jumlah_harga:2:0);
        writeln('Transaksi Lagi? (y/t) : ');readln(transaksi_lagi);
        while (transaksi_lagi='t') or (transaksi_lagi='T') do
            begin
            writeln('Terimakasi');
            break;
            end;
    end;
end.
