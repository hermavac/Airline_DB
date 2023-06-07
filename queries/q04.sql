-- Všechny linky, které již byly nasazeny a které neletí z Prahy

-- RA
/*
linka(odkud!='Praha')<linka.id_linka=let.id_linka]let
*/

-- SQL
select distinct li.*
from linka li
join let l on l.id_linka = li.id_linka
where li.odkud != 'Praha'
order by id_linka desc;
