SELECT COUNT(*) AS no_of_movies FROM film
WHERE (title LIKE 'A%' OR title LIKE'&R') OR description LIKE '%SAGA%';

SELECT * FROM customer
WHERE first_name LIKE '%ER%' AND first_name LIKE '_A%'
ORDER BY last_name;

SELECT * FROM payment
WHERE (amount BETWEEN 3.99 AND 7.99) AND payment_date BETWEEN '2020-05-01' AND '2020-05-02';

SELECT staff_id, SUM(amount) FROM payment
GROUP BY staff_id;

SELECT staff_id,DATE(payment_date),MAX(amount),COUNT(*) FROM payment
WHERE amount!=0
GROUP BY staff_id, DATE(payment_date)
ORDER BY COUNT(*) DESC;

SELECT customer_id, DATE(payment_date), COUNT(*), ROUND(AVG(amount),2) as avg_amount FROM payment
WHERE DATE(payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*)>1
ORDER BY avg_amount DESC