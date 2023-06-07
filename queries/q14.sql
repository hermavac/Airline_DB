-- Kolik by bylo potřeba minimálně letů, aby bylo každé letadlo nasazeno na lince do Varny

select count(*) as nejnizsi_Pocet_Letu
from letadlo cross join linka
where linka.kam = 'Varna'
