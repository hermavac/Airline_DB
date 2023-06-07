-- Je třeba prodat jedno letadlo, které je nejstarší.

begin;

select * from letadlo;

delete from letadlo
where id_letadlo in (
    select id_letadlo
    from letadlo
    order by rok_vyroby asc
    limit 1
    );

select * from letadlo;

rollback;
