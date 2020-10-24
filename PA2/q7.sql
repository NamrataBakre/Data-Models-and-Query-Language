use sakila;
select distinct CONCAT_WS(" ",first_name, last_name) as actor_name, count(distinct fc.category_id) as ncat
from actor a, film_actor fa, category c, film_category fc
where a.actor_id = fa.actor_id and fa.film_id = fc.film_id
group by actor_name
order by actor_name;
