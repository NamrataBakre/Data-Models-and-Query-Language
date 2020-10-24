use sakila;
select *
from(
select distinct f.film_id, case when (f.replacement_cost > sum(p.amount) and (f.replacement_cost - sum(p.amount)) between 0 and 1.5)
					then (f.replacement_cost - sum(p.amount)) end as to_breakeven
from payment p, rental r, inventory i, film f
where f.film_id = i.film_id and
i.inventory_id = r.inventory_id and
r.rental_id = p.rental_id 
group by film_id
order by  (f.replacement_cost - sum(p.amount)) desc
limit 72, 5) a
order by a.film_id asc;
