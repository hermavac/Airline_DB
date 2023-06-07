-- Nejvíce zastoupená značka letadla

select znacka
from (
    SELECT letadlo.znacka as znacka, COUNT(DISTINCT letadlo.id_letadlo) AS pocet_znacky
    FROM letadlo
    LEFT JOIN let ON letadlo.id_letadlo = let.id_letadlo
    GROUP BY letadlo.znacka
    ORDER BY pocet_znacky desc
    ) zdrojovaData
limit 1;
