-- D11 (Jméno a příjmení cestujících, kteří letěli POUZE lety typu 'charter'.) - optimalizace dotazu v SQL

(select jmeno, prijmeni
from (select jmeno, prijmeni, typ_letu
      from osoba
      join cestujici c on osoba.id_osoba = c.id_osoba
      join let_cestujici lc on c.id_osoba = lc.id_osoba
      join let l on lc.id_let = l.id_let) as data1
where typ_letu = 'charter')

except

(select jmeno, prijmeni
from (select jmeno, prijmeni, typ_letu
      from osoba
      join cestujici c on osoba.id_osoba = c.id_osoba
      join let_cestujici lc on c.id_osoba = lc.id_osoba
      join let l on lc.id_let = l.id_let) as data2
where typ_letu != 'charter');
