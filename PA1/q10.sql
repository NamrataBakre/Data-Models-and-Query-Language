use sakila;
select distinct f1.title as film_1, f2.title as film_2, f1.length, f1.rating
from film f1, film f2
where f1.length=f2.length and
f1.rating=f2.rating and
f1.film_id > f2.film_id;