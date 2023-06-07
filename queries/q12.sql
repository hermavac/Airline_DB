-- Letadla, která absolvovala let na VŠECH linkách.

-- RA
/*
let[id_letadlo, id_linka]÷linka[id_linka]*letadlo
*/

-- SQL
select *
from letadlo l where not exists(
    select *
    from linka li
    where not exists(
        select l
        from let
        where let.id_letadlo = l.id_letadlo and let.id_linka = li.id_linka
    )
)
