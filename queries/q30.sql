-- D26 (Vypiš seznam pilotů a počet letů, které absolvovali a výstup seřaď primárně podle počtu absolvovaných letů, sekundárně podle přijmení) - optimalizace dotazu v SQL

select osoba.jmeno, osoba.prijmeni, count(let.id_let) as pocet_letu
from osoba
join zamestnanec z on osoba.id_osoba = z.id_osoba
left join zamestnanec_let zl on z.id_osoba = zl.id_osoba
left join let on zl.id_let = let.id_let
join pilot p on z.id_osoba = p.id_osoba
group by osoba.jmeno, osoba.prijmeni
order by pocet_letu desc, osoba.prijmeni asc;
