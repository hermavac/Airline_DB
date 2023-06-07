-- D8 (Jméno a příjmení pilotů, kteří letěli POUZE s letadlem od výrobce Boeing) - optimalizace SQL dotazu

select jmeno, prijmeni
from (select distinct jmeno, prijmeni, znacka
      from osoba
      join zamestnanec z on osoba.id_osoba = z.id_osoba
      join pilot p on z.id_osoba = p.id_osoba
      join zamestnanec_let zl on z.id_osoba = zl.id_osoba
      join let l on zl.id_let = l.id_let
      join letadlo l2 on l.id_letadlo = l2.id_letadlo) as data1
where znacka = 'Boeing'

except

select jmeno, prijmeni
from (select distinct jmeno, prijmeni, znacka
      from osoba
      join zamestnanec z on osoba.id_osoba = z.id_osoba
      join pilot p on z.id_osoba = p.id_osoba
      join zamestnanec_let zl on z.id_osoba = zl.id_osoba
      join let l on zl.id_let = l.id_let
      join letadlo l2 on l.id_letadlo = l2.id_letadlo) as data2
where znacka != 'Boeing';
