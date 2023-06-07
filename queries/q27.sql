-- Vypiš údaje o zaměstnanci, který absolvovval s aerolinií let jako zaměstnanec i jako cestující

select o.*
from osoba o
join zamestnanec z on o.id_osoba = z.id_osoba
join zamestnanec_let zl on z.id_osoba = zl.id_osoba

intersect

select *
from osoba o
where id_osoba in (
    select id_osoba
    from let_cestujici
);
