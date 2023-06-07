-- Vypiš kolik letadel konkrétní značky je ve flotile aerolinie a kolik letů letadla konkrétní značky vykonala

SELECT letadlo.znacka, COUNT(DISTINCT letadlo.id_letadlo) AS pocet_znacky, COUNT(let.id_let) AS pocet_letu
FROM letadlo
LEFT JOIN let ON letadlo.id_letadlo = let.id_letadlo
GROUP BY letadlo.znacka;
