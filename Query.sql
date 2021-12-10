drop table if exists world_happiness_last;
create table world_happiness_last (

	country varchar,
	observation_year int,
	life_rating decimal (5,2),
	social_support decimal(5,2),
	life_expectancy decimal,
	freedom_to_make_life_choices decimal(5,2),
	perceptions_of_corruption decimal (5,2)
		
);

select * from world_happiness_last

drop table if exists world_death;
create table world_death (
	country varchar,
	observation_year int,
	total_population int,
	gdp_per_capita_current decimal(10,2),
	total_deaths int,
	cause_of_death varchar
);

SELECT w.country,w.observation_year,w.life_rating,w.social_support,w.life_expectancy,
w.freedom_to_make_life_choices,w.perceptions_of_corruption,
d.total_population,d.gdp_per_capita_current,d.total_deaths,
d.cause_of_death FROM world_death as d 
INNER JOIN world_happiness_last as w ON
w.country=d.country AND 
w.observation_year=d.observation_year;