program UTS_DASAR_PEMROGRAMAN;

uses crt;

var
        NA, NT, NQ, NUTS, NUAS, NIM: integer;
        NAMA: string[50];
        NTC, NQC, NUTSC, NUASC: real;

begin
        clrscr;
        write('MASUKAN NIM : ');readln(NIM);
        write('MASUKIN NAMA : ');readln(NAMA);
        write('NILAI TUGAS : ');readln(NT);
        write('NILAI QUIZ : ');readln(NQ);
        write('NILAI UTS : ');readln(NUTS);
        write('NILAI UAS : ');readln(NUAS);

        clrscr;

        {PROSES}

        {NTC:=10/100*NT;
        NQC:=20/100*NQ;
        NUTSC:=30/100*NUTS;
        NUASC:=40/100*NUAS;  }

        {NA:=NTC+NQC+NUTSC+NUASC;}

        NA:=85;

        writeln(NA:0);

        if ( NA >= 80 ) then
                writeln('GRADE A')
        else if (NA >= 75) then
                writeln('GRADE B')
        else if (NA >= 60) then
                writeln('GRADE C')
        else if (NA >= 49 ) then
                writeln('GRADE D')
        else
                writeln('GRADE E');
end.
