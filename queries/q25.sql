-- Vypiš záznamy o všech letech a všech nákladech, náklady, které jsou již přiřazené ke konkrétnímu letu k němu přiřaď.

select *
from let
full join naklad n on let.id_let = n.id_let;
