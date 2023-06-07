-- Posádka na letu TVS5210 podala nadstandatdní výkon, proto bude všem členům této posádky zvýšen plat o deset procent.

begin;

select jmeno, prijmeni, plat
from osoba
join zamestnanec z using (id_osoba)
join zamestnanec_let using (id_osoba)
where id_let = 'TVS5210';

update zamestnanec
set plat = plat * 1.1
where id_osoba in (
    select id_osoba
    from zamestnanec_let
    where id_let = 'TVS5210'
    );

select jmeno, prijmeni, plat
from osoba
join zamestnanec z using (id_osoba)
join zamestnanec_let using (id_osoba)
where id_let = 'TVS5210';

rollback;
