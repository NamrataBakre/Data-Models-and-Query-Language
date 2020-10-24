use sakila;
UPDATE customer
set active=0
where customer_id=7;

select email,active
from customer
where customer_id=7;