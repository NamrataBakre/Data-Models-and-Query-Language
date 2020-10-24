use sakila;
select r.customer_id, sum(amount) as total, count(payment_id) as n_rent
from payment p, rental r
where r.rental_id = p.rental_id
group by customer_id
having sum(amount)> 100
order by customer_id;