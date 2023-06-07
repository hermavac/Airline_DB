-- Jméno a příjmení cestujících, kteří letěli POUZE lety typu 'charter'.

-- RA
/*
{{{let(typ_letu='charter')*>let_cestujici}*>cestujici}*>osoba}[jmeno, prijmeni]
\
{{{let(typ_letu!='charter')*>let_cestujici}*>cestujici}*>osoba}[jmeno, prijmeni]
*/

-- SQL
(select jmeno, prijmeni
from osoba
join cestujici c on osoba.id_osoba = c.id_osoba
join let_cestujici lc on c.id_osoba = lc.id_osoba
join let l on lc.id_let = l.id_let
where l.typ_letu = 'charter')

except

(select jmeno, prijmeni
from osoba
join cestujici c on osoba.id_osoba = c.id_osoba
join let_cestujici lc on c.id_osoba = lc.id_osoba
join let l on lc.id_let = l.id_let
where l.typ_letu != 'charter');
