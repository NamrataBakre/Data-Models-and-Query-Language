use sakila;
select r.rental_id, payment_id
from payment p, rental r
where amount = ANY (select min(amount) from payment p, rental r where p.rental_id = r.rental_id) and
r.rental_id = p.rental_id
order by rental_id