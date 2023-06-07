-- Průměrné stáří letadel aerolinie zaokrouhlené na dvě desetinná místa

SELECT ROUND(AVG(extract(year from now()) - rok_vyroby)::numeric,2) AS prumerne_stari
FROM letadlo;
