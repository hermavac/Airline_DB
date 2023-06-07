-- Registrace nejstaršího letadla, které má předchozího majitele

select id_letadlo
from letadlo
where predchozi_majitel is not null
order by rok_vyroby asc
limit 1;
