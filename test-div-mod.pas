program Perhitungan_DIV_MOD;
uses crt;
var
    nilai1, nilai2, hasil_div, hasil_mod:integer;
begin
    clrscr;
    write('Masukan niali pertama = ');readln(nilai1);
    write('Masukan nilai kedua = ');readln(nilai2);
    hasil_div:=nilai1 div nilai2;
    writeln('Hasil Nilai DIV : ', hasil_div);
    hasil_mod:=nilai1 mod nilai2;
    writeln('Hasil Nilai MOD :', hasil_mod);
    if hasil_mod mod 2 = 1 then
    begin
        write('Bilangan Ganjil');
        readln;
    end
    else
    begin
        write('Bilangan Genap');
    end;
end.
