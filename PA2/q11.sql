select distinct f1.film_id as f1, f2.film_id as f2, count(distinct r1.customer_id) as cnt
from film f1, film f2, inventory i1, inventory i2, rental r1, rental r2
where f1.film_id <> f2.film_id and i1.film_id = f1.film_id and i2.film_id = f2.film_id and i1.inventory_id = r1.inventory_id
and i2.inventory_id = r2.inventory_id and
not exists(select * from film f3 join inventory inv3 using(film_id) join rental r3 using(inventory_id)
where r3.customer_id = r2.customer_id
and r3.customer_id = r1.customer_id
and r3.customer_id = r2.customer_id
and r3.rental_date > r1.rental_date
and r3.rental_date < r2.rental_date
and f3.film_id <> f1.film_id
and f3.film_id <> f2.film_id)
and r1.customer_id = r2.customer_id
and r2.rental_date > r1.rental_date
group by f1.film_id, f2.film_id
order by cnt desc, f1 asc, f2 asc;
