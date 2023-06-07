-- Přidat na let TVS5210 ještě jednou náklad od odesílatele Česká pošta

BEGIN;
SELECT * FROM naklad;
INSERT INTO naklad (id_let, vaha, nazev, odesilatel, prijemce)
SELECT id_let, vaha, nazev, odesilatel, prijemce
FROM naklad
WHERE id_let = 'TVS5210' and odesilatel = 'Ceska posta';
SELECT * FROM naklad;
ROLLBACK;
