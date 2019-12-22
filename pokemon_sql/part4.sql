use Pokemon ;
Select * from pokemons;
select * from types;
select * from pokemon_trainer;
select * from trainers;
select count(distinct pokemon_id) from Pokemon_trainer where pokelevel >= 100;
select count(*) from (select pokemon_id from pokemon_trainer group by pokemon_id having count(*) = 1) a; 

select a.p_name, c.trainername, b.pokelevel, a.p_ptype, a.p_stype 
from pokemon_trainer b, trainers c, 
(select x.id, x.p_name, x.p_ptype, t3.name as p_stype from (
select y.id as id, y.name as p_name, t1.name as p_ptype, y.secondary_type as stype
 from pokemons y left join types t1 on y.primary_type = t1.id ) x left join types t3 on x.stype = t3.id) a
where b.pokemon_id = a.id and c.trainerID = b.trainerID;