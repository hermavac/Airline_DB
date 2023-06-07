-- Kontrola dotazu kategorie D1 (Letadla, která absolvovala let na všech linkách.)

select *
from linka

except

select l.*
from linka l
join let using (id_linka) join letadlo using (id_letadlo)
where id_letadlo = (
                        select id_letadlo
                        from letadlo l where not exists(
                            select *
                            from linka li
                            where not exists(
                                select l
                                from let
                                where let.id_letadlo = l.id_letadlo and let.id_linka = li.id_linka
                            )
                        )
);
