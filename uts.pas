program UTS_DASAR_PEMROGRAMAN_BENEDIKTUS_ZEBUA;

uses crt;

var
        NT, NQ, NUTS, NUAS, NIM: integer;
        keterangan, NAMA: string[50];
        NA, NTC, NQC, NUTSC, NUASC: real;
        N: char;
        
        
procedure HASIL(N, keterangan);
begin
    clrscr;
    writeln('NIM            : ', NIM);
    writeln('NAMA           : ', NAMA);
    writeln('NILAI AKHIR    : ', NA);
    writeln('GRADE          : ', N);
    writeln('KETERANGAN     : ', keterangan);
end;

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

        NTC:=0.10*NT;
        NQC:=0.20*NQ;
        NUTSC:=0.30*NUTS;
        NUASC:=0.40*NUAS;

        NA:=NTC+NQC+NUTSC+NUASC;

        writeln(NA:2:0);

        if ( NA >= 80 ) then
            begin
                {writeln('GRADE A')}
                N:='A';
                HASIL(NA, "MEMUASKAN");
            end
        else if (NA >= 75) then
            begin
                {writeln('GRADE A')}
                N:='B';
                HASIL(NA, "MEMUASKAN");
            end
        else if (NA >= 60) then
            begin
                {writeln('GRADE A')}
                N:='C';
                HASIL(NA, "MEMUASKAN");
            end
        else if (NA >= 49 ) then
            begin
                {writeln('GRADE A')}
                N:='D';
                HASIL(NA, "MEMUASKAN");
            end
        else
            begin
                {writeln('GRADE A')}
                N:='E';
                HASIL(NA, "MEMUASKAN");
            end;
end.
