-- Vypiš osoby, které se neúčastnili žádného letu.

select *
from osoba
where not exists (
    select 1
    from let_cestujici
    where id_osoba = osoba.id_osoba
    );
    
  
    
select *
from osoba
where id_osoba not in (
    select id_osoba
    from let_cestujici
    );
    
    
    
select *
from osoba

except

select o.*
from osoba o
join cestujici c on o.id_osoba = c.id_osoba
join let_cestujici lc on c.id_osoba = lc.id_osoba
order by id_osoba asc;
