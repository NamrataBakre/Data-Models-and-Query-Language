use sakila;
select f.film_id, length, avg(datediff(return_date,rental_date)) as avg_days
from film f, rental r, inventory i
where r.inventory_id = i.inventory_id and
f.film_id = i.film_id
group by film_id
order by film_id;