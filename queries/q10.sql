-- ID a značky letadel, která neabsolvovala žádný let.

-- RA
/*
{{{letadlo[letadlo.id_letadlo, letadlo.znacka]}
\
{{letadlo[letadlo.id_letadlo = let.id_letadlo]let}}[letadlo.id_letadlo, letadlo.znacka]}}
*/

-- SQL
select id_letadlo, znacka
from letadlo
where id_letadlo not in (
    select id_letadlo from let
    )
