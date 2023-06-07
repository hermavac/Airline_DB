-- ID linek, které byly někdy nasazeny. 

-- RA
/*
{linka*let}[linka.id_linka]
*/

-- SQL
select distinct linka.id_linka
from linka
join let using (id_linka)
order by id_linka;
