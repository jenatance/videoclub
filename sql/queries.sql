/* Queremos saber el título y cuánto vale el alquiler de las películas de la categoría 'Horror' 
ordenadas por el precio de más barato a más caro */

SELECT title, rental_rate
FROM films
WHERE category_id IN(
	SELECT category_id
	FROM categories
	WHERE name_ = 'Horror')
ORDER BY rental_rate, title ASC;

/* Queremos saber cuántas películas hay en cada categoría */

SELECT 
    c.name_, COUNT(*)
FROM
    categories c
        INNER JOIN
    films f ON f.category_id = c.category_id
GROUP BY c.name_;

/* Quiero saber si hay algún alquiler que se haya hecho antes de que salga la película (ya que serían datos erróneos) */

SELECT 
    f.title,
    f.release_year AS estreno,
    YEAR(r.rental_date) AS alquiler
FROM
    films f
        INNER JOIN
    film_inventory fi ON f.film_id = fi.film_id
        INNER JOIN
    rentals r ON r.inventory_id = fi.inventory_id
WHERE
    f.release_year >= YEAR(r.rental_date);
