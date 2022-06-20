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
        f.release_year > YEAR(r.rental_date);

/* Número películas hechas por cada actor ordenador del que más a hecho al que menos */

    SELECT 
        CONCAT(first_name_actor, ' ', last_name_actor) AS nombreCompleto,
        COUNT(*) AS numPeliculas
    FROM
        actor_film
    GROUP BY nombreCompleto
    ORDER BY numPeliculas DESC;

/* Actores y categoría de los actores que han hecho películas de categoría 5 */

    SELECT DISTINCT
        (a.actor_id), c.name_
    FROM
        actors a
            INNER JOIN
        actor_film af ON CONCAT(a.first_name, ' ', a.last_name) 
                = CONCAT(af.first_name_actor, ' ', af.last_name_actor)
            INNER JOIN
        films f ON af.title_film = f.title
            INNER JOIN
        categories c ON c.category_id = f.category_id
    WHERE
        c.category_id = 5;