use sakila;

select film_id,title 
from film
where rental_rate<1;