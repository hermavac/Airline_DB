-- Vyber piloty s hodností 'kapitán' a letušky, jejichž výška je vetší než 170 cm.

-- RA
/*
{{{letuska(vyska>170)[letuska.id_osoba = zamestnanec.id_osoba>zamestnanec}[zamestnanec.id_osoba = osoba.id_osoba>osoba}[jmeno, prijmeni]}

∪

{{{pilot(hodnost='kapitan')[pilot.id_osoba = zamestnanec.id_osoba>zamestnanec}[zamestnanec.id_osoba = osoba.id_osoba>osoba}[jmeno, prijmeni]}
*/

-- SQL
select jmeno, prijmeni
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
join letuska l on z.id_osoba = l.id_osoba
where vyska > 170

union

select jmeno, prijmeni
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
join pilot p on z.id_osoba = p.id_osoba
where hodnost = 'kapitan';
