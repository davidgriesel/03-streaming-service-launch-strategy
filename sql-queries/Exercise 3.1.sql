-- Select actors with first name 'Ed'
SELECT COUNT(*)
FROM actor
WHERE first_name = 'Ed';

-- List all columns in payment table
SELECT * 
FROM payment 
LIMIT 10;

-- List all tables in public schema
SELECT * FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type = 'BASE TABLE';

-- Analyse rental duration distribution - number of days most films rented for
SELECT rental_duration AS "rented for (in days)", 
	COUNT(*) AS "number of films"
FROM film
GROUP BY 1
ORDER BY 2;

-- Tableau export file - Rental duration distribution
SELECT rental_duration, film_id
FROM film
GROUP BY 1,2
ORDER BY 2;