--1. How many actors are there with the last name ‘Wahlberg’?
select count(last_name)
from actor
where last_name like 'Wahlberg';
-- There is 2 actors with the last name Wahlberg

--2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment
where amount < 5.99 and amount > 3.99;
-- there were 3412 payments  made between $3.99 and $5.99

--3. What film does the store have the most of? (search in inventory)
select film_id
from inventory
group by film_id 
order by count(film_id) desc
limit 1;
-- The store has the most copies of Curtain Videotape aka film_id 200

--4. How many customers have the last name ‘William’?
select count(last_name)
from customer
where last_name like 'William';
-- There were no customers with the last name 'William'

--5. What store employee (get the id) sold the most rentals?
select staff_id
from rental
group by staff_id 
order by count(staff_id) desc
limit 1;
-- Mike aka staff_id 1 sold the most rentals or is it rented out the most rentals?

--6. How many different district names are there?
select count(distinct district)
from address;

-- There are 378 distinct or different district names

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id
from film_actor
group by film_id 
order by count(film_id) desc 
limit 1;
-- The movie Lambs Cincinatti had the most actors in it

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name) 
from customer
where store_id = '1' and last_name like '%es';
-- there are 13 customers for store_id 1 whos last name end with es.

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select amount
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;
--There are 3 differnt prices that had sales of above 250 from customers with ids between 380 and 430

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select count(distinct rating)
from film;

select rating
from film
group by rating
order by count(rating) desc
limit 1;
--there are 5 differnt ratings and pg-13 has the most films with 223