-- Vypiš všechny lety ke každému nákladu, který konkrétní let převážel. Ve výstupu chceme i lety, které náklad nepřevážely

select *
from let l
left join naklad n on l.id_let = n.id_let;
