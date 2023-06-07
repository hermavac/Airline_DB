-- Vypiš letadla, která jsou značky 'Boeing' a jsou vyrobena po roce 2010

-- RA
/*
letadlo(znacka='Boeing')
∩
letadlo(rok_vyroby>2010)
*/

-- SQL
select *
from letadlo
where znacka = 'Boeing'

intersect

select *
from letadlo
where rok_vyroby > 2010;
