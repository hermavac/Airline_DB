-- Jméno a příjmení pilotů, kteří letěli POUZE s letadlem od výrobce Boeing

-- RA
/*
{{{{{letadlo(znacka='Boeing')[letadlo.id_letadlo=let.id_letadlo>let}[let.id_let=zamestnanec_let.id_let>zamestnanec_let}[zamestnanec_let.id_osoba=pilot.id_osoba>pilot}[pilot.id_osoba=osoba.id_osoba>osoba}[osoba.jmeno, osoba.prijmeni]}
\
{{{{{letadlo(znacka!='Boeing')[letadlo.id_letadlo=let.id_letadlo>let}[let.id_let=zamestnanec_let.id_let>zamestnanec_let}[zamestnanec_let.id_osoba=pilot.id_osoba>pilot}[pilot.id_osoba=osoba.id_osoba>osoba}[osoba.jmeno, osoba.prijmeni]}
*/

-- SQL
select distinct jmeno, prijmeni
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
join pilot p on z.id_osoba = p.id_osoba
join zamestnanec_let zl on z.id_osoba = zl.id_osoba
join let l on zl.id_let = l.id_let
join letadlo l2 on l.id_letadlo = l2.id_letadlo
where l2.znacka = 'Boeing'

except

select distinct jmeno, prijmeni
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
join pilot p on z.id_osoba = p.id_osoba
join zamestnanec_let zl on z.id_osoba = zl.id_osoba
join let l on zl.id_let = l.id_let
join letadlo l2 on l.id_letadlo = l2.id_letadlo
where l2.znacka != 'Boeing'
