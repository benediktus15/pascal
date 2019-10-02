PROGRAM PERPUSTAKAAN;

USES crt;
    
CONST
    max = 50;
    
TYPE 
    buku = record
        judul, pengarang        : string;
        stok                    : byte
    end;
    
    arr_buku = array[1..max] of buku;
    
    pinjam = record
        nama, judul_buku        : string;
    end;
    
    arr_pinjam = array[1..max] of pinjam;

VAR
    daftar_buku                 : arr_buku;
    daftar_pinjam               : arr_pinjam;
    i, j, k, l, n, pilihan, p   : byte;
    ketemu                      : boolean;


{Tambah Buku}
PROCEDURE tambah_buku(var b:arr_buku);
var
    judul_buku_baru, pengarang_buku_baru    : string;
    jumlah_input : byte;
    
begin
    clrscr;
    ketemu := false;
    
    write('Jumlah Buku Yang Diinput : ');
    readln(jumlah_input);
    
    for i := 1 to jumlah_input do
    begin
        clrscr;
        writeln('Buku ke-', i);
        write('Judul Buku       : ');readln(judul_buku_baru);
        write('Nama Pengarang   : ');readln(pengarang_buku_baru);
        
        {Melakukan pengecekan}
        for j := 1 to n do
        begin
            if(b[j].judul = judul_buku_baru) and (b[j].pengarang = pengarang_buku_baru) then
            begin
                ketemu := true;
                writeln('Buku yang baru diinput sudah tersedia...!!!');
            end;
        end;
        
        if not ketemu then
        begin
            inc(n);
            
            b[n].judul      := judul_buku_baru;
            b[n].pengarang  := pengarang_buku_baru;
            write('Jumlah Buku      : ');
            readln(b[n].stok);
        end;
    end;
    
end;


{Tambah Stok}
PROCEDURE tambah_stok(var b : arr_buku);
var
    judul_buku_baru, pengarang_buku_baru    : string;
    jumlah_tambah, indeks                   : byte;
    lanjut                                  : boolean;

begin
    clrscr;
    ketemu := false;
    lanjut := false;
    
    write('Judul Buku yang akan ditambah stok : ');
    readln(judul_buku_baru);
    
    for i := 1 to n do
        if b[i].judul = judul_buku_baru then
            begin
                writeln(b[i].judul:15, '   ', b[i].pengarang:15);
                lanjut := true;
            end;
            writeln;
        if lanjut then
            begin
                write('Nama Pengarang Buku          : ');
                readln(pengarang_buku_baru);
            end;
    
    for i := 1 to n do
        if (b[i].judul = judul_buku_baru) and (b[i].pengarang = pengarang_buku_baru) then
            begin
                ketemu := true;
                indeks := i;
            end;
        if ketemu then
            begin
                write('Jumlah stok baru             : ');
                readln(jumlah_tambah);
                b[indeks].stok := b[indeks].stok + jumlah_tambah;
            end
        else
            writeln('Buku tidak tersedia...');
end;


{List Buku}
PROCEDURE list_buku(var b: arr_buku);
begin
    clrscr;
    writeln('DAFTAR BUKU YANG ADA DI PERPUSTAKAAN ');
    writeln('------------------------------------------------');
    writeln('No         Judul             Pengarang       Stok');
    writeln('------------------------------------------------');
    
    for i:=1 to n do
        writeln(i:2,'  ',b[i].judul:15,'  ',b[i].pengarang:15,'  ',b[i].stok:3);
        writeln('------------------------------------------------');
end;


{Menu Pinjam Buku}
PROCEDURE pinjam_buku(var b : arr_buku);
var
    judul_buku_c, pengarang_buku_c, nama_peminjam          : string;
    jumlah_tambah, indeks            : byte;
    ulang_lagi                      : string;
    
label lagi;

begin
    lagi:
    clrscr;
    
    write('Judul Buku yang akan dipinjam    : ');
    readln(judul_buku_c);
    
    {cek}
    ketemu := false;
    
    for i:=1 to n do
        if b[i].judul = judul_buku_c then 
            begin 
                indeks := i;
                ketemu := true;
            end;
            
    {jika judul ditemukan}
    if (ketemu) and (b[indeks].stok > 0) then
        begin
            write('Buku Tersedia, Masukkan Nama Peminjam    : ');
            readln(nama_peminjam);
            
            {memasukkan ke array pinjam}
            inc(p);
            dec(b[indeks].stok);
            daftar_pinjam[p].nama := nama_peminjam;
            daftar_pinjam[p].judul_buku := judul_buku_c;
        end
    else
        begin
            writeln('Buku yang anda cari tidak tersedia...');
            write('Apakah akan meminjam buku lain ? (y/t) ');
            readln(ulang_lagi);
            
            if ulang_lagi = 'y' then 
                goto lagi;
        end;
end;


{List Pinjam Buku}
PROCEDURE list_pinjam(var b : arr_pinjam);
begin
    clrscr;
    writeln('DAFTAR PEMINJAM BUKU YANG PERPUSTAKAAN ');
    writeln('------------------------------------------------');
    writeln('No          Peminjam                Judul Buku');
    writeln('------------------------------------------------');
    
    for i:=1 to p do
        writeln(i:2,'  ',b[i].nama:10,'    ',b[i].judul_buku:20);
        writeln('------------------------------------------------');
end;


{List Pinjam Buku}
PROCEDURE pengembalian_buku(var b : arr_buku);
var 
    judul_buku_k, nama_peminjam     : string;
    indeks                          : byte;
    
label selesai;
  
begin
    clrscr;
    
    if p = 0 then
    begin
        writeln('Tidak ada pinjaman buku...');
        goto selesai;
    end;
    
    indeks := 0;
    writeln('Selamat datang di pengembalian buku ');
    write('masukkan nama peminjam ');
    readln(nama_peminjam);
    write('masukkan judul buku yg kembali ');
    readln(judul_buku_k);
    
    {menambahkan stok buku dg judul tsb}
    for i:=1 to n do
    begin
        if (b[i].judul)=judul_buku_k then inc(b[i].stok);
    end;
    
    {menghapus record di daftar peminjam buku}
    for i:=1 to p do
        if (daftar_pinjam[i].judul_buku = judul_buku_k) and (daftar_pinjam[i].nama = nama_peminjam) then 
        indeks := i;

    if indeks <> 0 then
    begin
        writeln('Buku : ', judul_buku_k ,' dipinjam oleh ', nama_peminjam,' sudah dikembalikan.');
        {hapus}
        for j := indeks to p-1 do  
            daftar_pinjam[j] := daftar_pinjam[j+1];
            dec(p);
    end
        else writeln('Nama Peminjam atau Judul Buku Harap Dicek Kembali...');
    
selesai: end;



{Program Utama}
begin
    repeat
        begin
            clrscr;
            
            writeln('Menu Perpustakaan');
            writeln('1. Tambah Buku');
            writeln('2. Tambah Stok');
            writeln('3. Daftar Buku');
            writeln('4. Pinjam Buku');
            writeln('5. Daftar Peminjaman');
            writeln('6. Pengembalian Buku');
            writeln('7. Selesai');
            write('Pilihan anda ==> ');readln(pilihan);
            
            case pilihan of
                1: 
                tambah_buku(daftar_buku);
                2: 
                tambah_stok(daftar_buku);
                3: 
                list_buku(daftar_buku);
                4: 
                pinjam_buku(daftar_buku);
                5: 
                if p = 0 then 
                    writeln('Tidak ada yang meminjam...')
                else 
                    list_pinjam(daftar_pinjam);
                6: 
                if p > 0 then 
                    pengembalian_buku(daftar_buku)
                else
                    writeln('maaf saat ini tidak ada yang sedang meminjam buku') ;
                7: 
                writeln('Terimakasih ');
            end;
            readln;
        end
    until(pilihan=7);
end.
