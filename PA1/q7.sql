use sakila;

INSERT INTO actor (first_name,last_name) values ('KENNETH','OLIVIER');

select first_name,last_name 
from actor
where first_name='KENNETH';