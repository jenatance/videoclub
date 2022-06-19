SET foreign_key_checks = 0;
	
    
	INSERT INTO actor_film (first_name_actor,last_name_actor,title_film,release_year_film)
	SELECT first_name, last_name, title, release_year
	FROM  actorfilmtable;
    
    DROP TABLE actorfilmtable;


	INSERT INTO actors (actor_id, first_name, last_name, last_update)
	SELECT actor_id, first_name, last_name, last_update
	FROM actortable;
    
    DROP TABLE actortable;
    
	INSERT INTO categories (category_id, name_, last_update)
	SELECT category_id, name, last_update
	FROM categorytable;
    
    DROP TABLE categorytable;
    
	INSERT INTO film_inventory (film_id, inventory_id)
	SELECT inventory_id, film_id
	FROM filminventorytable;
    
    DROP TABLE filminventorytable;
    
	INSERT INTO film_language (film_id, language_id)
	SELECT film_id, language_id
	FROM filmlanguagetable;
    
    DROP TABLE filmlanguagetable;
    
    
    
	INSERT INTO films (film_id, title, description_, release_year, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update, category_id)
	SELECT film_id, title, description, release_year, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update, category_id
	FROM filmtable;
    
    DROP TABLE filmtable;
    
    
    
	INSERT INTO inventories (inventory_id, store_id, last_update)
	SELECT inventory_id, store_id, last_update
	FROM inventorytable;
    
    DROP TABLE inventorytable;
    
	INSERT INTO languages (language_id, name_, last_update)
	SELECT language_id, name, last_update
	FROM languagetable;
    
    DROP TABLE languagetable;

	INSERT INTO rentals (rental_id, rental_date, customer_id, return_date, staff_id, inventory_id, last_update)
	SELECT rental_id, rental_date, customer_id, return_date, staff_id, inventory_id, last_update
	FROM rentaltable;
    
    DROP TABLE rentaltable;

SET foreign_key_checks = 1;
    
