program bbm2;
uses crt;
const
  Harga : array[1..3] of integer = (6650, 7650, 9850);
  Jenis : array[1..3] of string = ('Premium', 'Pertalite', 'Pertamax');
  Premium = 6650;
  Pertalite = 7650;
  Pertamax = 9850;
var
  liter, i, j: integer;
begin
  clrscr;
  gotoxy(5, 2);
  write('Jumlah Liter : ');readln(Liter);
  gotoxy(5, 0);
  writeln('Versi 1');
  gotoxy(5, 0);
  writeln('=========================================================');
  gotoxy(5, 0);
  writeln('|', 'Jenis':12, '|':4, 'Harga':8, '|':4, 'Liter':8, '|':4, 'Jumlah':10, '|':6);
  gotoxy(5, 0);
  writeln('=========================================================');
  for i:= 1 to 3 do
    begin
    gotoxy(5, 0);
      writeln('|', Jenis[i]:12, '|':4, Harga[i]:8, '|':4, liter:6, '|':6, liter*Harga[i]:10, '|':6);
    end;
  gotoxy(5, 0);
  writeln('=========================================================');
  writeln();
  gotoxy(5, 0);
  writeln('Versi 2');
  gotoxy(5, 0);
  writeln('=====================================================');
  gotoxy(5, 0);
  writeln('|', 'Liter':8, '|':4, 'Premium':8, '|':4, 'Pertalite':10, '|':4, 'Pertamax':10, '|':4);
  for j:=1 to liter do
    begin
      gotoxy(5, 0);
      writeln('|', j:8, '|':4, Premium*j:8, '|':4, Pertalite*j:10, '|':4, Pertamax*j:10, '|':4);
    end;
  gotoxy(5, 0);
  writeln('=====================================================');
end.
