-- Vypiš linky s počtem přepravených cestujících, kde bylo cestujících přepraveno více než 4, linka odlétá z Prahy a výsledek seřaď sestupně podle počtu cestujících.

select l.id_linka, count(lc.id_osoba) as pocet_cestujicich
from linka li
join let l on li.id_linka = l.id_linka
join let_cestujici lc on l.id_let = lc.id_let
where odkud = 'Praha'
group by l.id_linka
having count(lc.id_osoba) > 4
order by pocet_cestujicich desc;
