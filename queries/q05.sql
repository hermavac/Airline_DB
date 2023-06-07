-- Jméno a příjmení všech pilotů, kteří letěli s letadlem registrace OK-SWA

-- RA
/*
{{{{{letadlo(id_letadlo='OK-SWA')[letadlo.id_letadlo=let.id_letadlo>let}[let.id_let=zamestnanec_let.id_let>zamestnanec_let}[zamestnanec_let.id_osoba=zamestnanec.id_osoba>zamestnanec}[zamestnanec.id_osoba=pilot.id_osoba>pilot}[pilot.id_osoba=osoba.id_osoba>osoba}[jmeno, prijmeni]
*/

-- SQL
select distinct jmeno, prijmeni
from letadlo
join let l on letadlo.id_letadlo = l.id_letadlo
join zamestnanec_let zl on l.id_let = zl.id_let
join zamestnanec z on zl.id_osoba = z.id_osoba
join pilot p on z.id_osoba = p.id_osoba
join osoba o on o.id_osoba = z.id_osoba
where letadlo.id_letadlo = 'OK-SWA';
