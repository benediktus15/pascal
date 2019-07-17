program bbm2;
uses crt;
const
  Harga : array[1..3] of integer = (6650, 7650, 9850);
  Jenis : array[1..3] of string = ('Premium', 'Pertalite', 'Pertamax');
var
  liter, i: integer;
begin
  clrscr;
  write('Jumlah Liter : ');readln(Liter);
  writeln('=========================================================');
  writeln('|', 'Jenis':12, '|':4, 'Harga':8, '|':4, 'Liter':8, '|':4, 'Jumlah':10, '|':6);
  writeln('=========================================================');
  for i:= 1 to 3 do
    begin
      writeln('|', Jenis[i]:12, '|':4, Harga[i]:8, '|':4, liter:6, '|':6, liter*Harga[i]:10, '|':6);
    end;
  writeln('=========================================================');
end.
