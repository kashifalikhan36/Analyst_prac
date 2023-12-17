SELECT 
DISTINCT district
FROM address;

SELECT rental_date FROM rental
ORDER BY rental_date DESC
LIMIT 1;

SELECT COUNT(DISTINCT film_id) FROM film;

SELECT COUNT(DISTINCT last_name) FROM customer;

SELECT COUNT(*) FROM payment
WHERE customer_id=100;

SELECT last_name FROM customer
WHERE first_name='ERICA';

SELECT * FROM payment
WHERE amount !=10.99;

SELECT COUNT(*) FROM rental
WHERE rental_date is null;

SELECT payment_id,amount FROM payment
WHERE amount<=2;

SELECT * FROM payment
WHERE (customer_id=322 or customer_id=346 or customer_id=354) AND (amount<2 or amount>10)
ORDER BY customer_id, amount DESC;

SELECT COUNT(*) FROM payment
WHERE (amount BETWEEN 1.99 AND 3.99) AND (payment_date BETWEEN '2020-01-26' AND '2020-01-27 23:59');

SELECT * FROM payment
WHERE customer_id IN (12,25,67,93,124,234) AND amount IN (4.99,7.99,9.99)
AND payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59';

SELECT * FROM customer
WHERE first_name LIKE '___'
AND last_name LIKE '%Y' 
OR last_name LIKE '%X';

SELECT COUNT(*) FROM film
WHERE description LIKE '%Documentary%';

SELECT description AS description_of_movies FROM film
WHERE description LIKE '%Documentary%'

---DAY 1 AND 2 COMPLETE TO GET INSIGHTS FROM FILM SHOP
