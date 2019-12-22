Use Pokemon;
Select * from types;
Select name from pokemons where id = 45;
Select  count(*) from types;
select count(*) from pokemons;
select count(*) from pokemons where secondary_type  is not null;
select primary_type from pockemons;

select pokemons.name, types.name from pokemons inner join types on types.id; 
select types.name  from types inner join pokemons on 
pokemons.secondary_type = types.id and pokemons.name = 'Rufflet';
select * from trainers;

select pokemons.name from pokemons inner join pokemon_trainer on
 pokemons.id = pokemon_trainer.pokemon_id and trainerID = 303;
 select count(*) from pokemons inner join types on 
 pokemons.secondary_type = types.id and types.name = 'Poison';
 select types.name ,count(*) from pokemons inner join types on 
 pokemons.primary_type = types.id group by types.name;
select count(*) from trainers inner join Pokemon_trainer on
 trainers.trainerID = pokemon_trainer.trainerID group by pokemon_trainer.pokelevel > 100;
select count(*) as numberOfPokemonwithLevel100 from (select trainerID, count(*)  from pokemon_trainer
 where pokelevel >=100 group by trainerid) as temp;
 #select count(distinct(pokemon_trainer.trainerID)) from pokemons inner Join pokemon_trainer
 #on pokemons.id = pokemon_trainer.pokemon_id  ;
 
 select trainerID, count(*) from pokemon_trainer where pokelevel = 100 group by trainerID;
select count(*) from (select p.name, count(p.name) from pokemons as p inner join pokemon_trainer
 pt on p.id = pt.pokemon_id group by pt.pokemon_id having count(pt.pokemon_id)=1) as subq;

