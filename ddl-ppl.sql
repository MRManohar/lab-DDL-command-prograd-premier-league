--Complete your queries below--


--**Create skill table**

create table skill(
id int,
name varchar(100)
);

--**Create city table**
create table city as (select * from skill);

-- **Create venue table**
create table venue as (select * from skill);
alter table venue
add city_id int;

--**Create team table**
create table team(
id int,
name varchar(100),
coach varchar(100),
home_city_id int,
coach int
);

-- **Create player table**
create table player(
id int,
name varchar(100),
country varchar(100),
skill_id int,
team_id int
);
-- **Create outcome table**
create table outcome(
id int,
status varchar(100),
winner_team_id int,
wickets int,
runs int,
player_of_match int
);
-- **Create innings table**
create table innings(
id int,
innings_number int,
bating_team_id int
);
-- **Create game table**
create table game(
id int,
game_date int,
team_id_1 int,
team_id_2 int,
venue_id int,
outcome_id int,
first_innings_id int,
seconds_innings_id int
);
-- **Create umpire table**
create table umpire as (select * from city);
-- **Create umpire_type table**
create table umpire_type(
id int,
type varchar(100)
);
-- **Create game_umpire_type table**
create table game_umpire_type(
id int,
game_id int,
umpire_id int,
umpire_typer_id int
);
-- **Create wicket_type table**
create table wicet_type as(
select * from city
);
-- **Change delivery table**
create table delivery(
id int,
innings_id int,
over int,
ball int,
bastman_id int,
bowler_id int,
non_striker_id int,
runs int
);
-- **Change wicket table**
create table wicket(
id int,
delivery_id int,
wicket_type_id int,
player_id int,
fielder_id int
);
-- **Create extratype table**
create table extratype as (select * from city);
-- **Create extradelivery table**
create table extradelivery(
id int,
delivery_in int,
extra_type_id int,
runs int
);
-- **Alter column name id**
alter table extradelivery 
modify id varchar(100);
-- **Alter column name city**
alter table city
add names varchar(50);
-- **Alter column name caption**
alter table wicket 
add caption varchar(100);
-- **Delete column status**

-- **Drop table delivery**
drop table delivery;
-- **Drop table game**
drop table game;

-- **Alter column name innings_number**
alter table innings
drop column innings_number;
-- **Alter column name wickets**
alter table wickets
drop column delivery_id;
-- **Drop table extratype**

drop table extratype;
