-- Vypiš seznam pilotů a počet letů, které absolvovali a výstup seřaď primárně podle počtu absolvovaných letů, sekundárně podle přijmení

select jmeno, prijmeni, (
    select count(*)
    from let
    join zamestnanec_let zl on let.id_let = zl.id_let
    where osoba.id_osoba = zl.id_osoba
    ) as pocet_letu
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
join pilot p on z.id_osoba = p.id_osoba
order by pocet_letu desc, prijmeni asc;
