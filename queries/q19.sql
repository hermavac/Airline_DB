-- Vytvoř pohled stálých domácích zákazníků. Jsou to ti, kteří absolvovali s aerolinií více než jeden let a jejich národnost má hodnotu 'CZ'. Vypiš z těchto cestujících takové, jejichž email má podobu '@myspace.com'.

create or replace view staliDomaciZakaznici as
select jmeno, prijmeni, email
from osoba o join cestujici c on o.id_osoba = c.id_osoba
join let_cestujici lc on c.id_osoba = lc.id_osoba
join let l on lc.id_let = l.id_let
where c.narodnost = 'CZ' and (select count(*) from let_cestujici where id_osoba = o.id_osoba) > 1
;

select distinct *
from staliDomaciZakaznici
where email like '%@myspace.com';
