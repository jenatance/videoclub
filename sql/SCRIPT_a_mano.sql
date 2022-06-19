DROP DATABASE IF EXISTS VIDEOCLUB;
CREATE DATABASE VIDEOCLUB;
USE VIDEOCLUB;

CREATE TABLE ACTORS (
	actor_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    last_update DATETIME NOT NULL
);

CREATE TABLE ACTOR_FILM (
	first_name_actor VARCHAR (30) NOT NULL,
    last_name_actor VARCHAR (50) NOT NULL,
    title_film VARCHAR (200) NOT NULL,
    release_year_film INTEGER NOT NULL,
	PRIMARY KEY (first_name_actor, last_name_actor, title_film)
);

CREATE TABLE FILMS (
	film_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR (200) NOT NULL,
    description_ TEXT NOT NULL,
    release_year INTEGER NOT NULL,
    rental_duration INTEGER NOT NULL,
    rental_rate DECIMAL(2,2) NOT NULL,
    length INTEGER NOT NULL,
    replacement_cost DECIMAL (3,2) NOT NULL,
    rating VARCHAR(5) NOT NULL,
    special_features TEXT NOT NULL,
    last_update DATETIME NOT NULL,
    category_id INTEGER NOT NULL
);

CREATE TABLE FILM_LANGUAGE (
	film_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    PRIMARY KEY (film_id, language_id)
);

CREATE TABLE LANGUAGES (
	language_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name_ VARCHAR (30) NOT NULL,
	last_update DATETIME NOT NULL
);

CREATE TABLE CATEGORIES (
	category_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name_ VARCHAR (30) NOT NULL,
    last_update DATETIME NOT NULL
);

CREATE TABLE FILM_INVENTORY (
	film_id INTEGER NOT NULL,
    inventory_id INTEGER NOT NULL,
    PRIMARY KEY (film_id, inventory_id)
);

CREATE TABLE INVENTORIES (
	inventory_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	store_id INTEGER NOT NULL,
    last_update DATETIME NOT NULL
);

CREATE TABLE RENTALS (
	rental_id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rental_date DATETIME NOT NULL,
    customer_id INTEGER NOT NULL,
    return_date DATETIME NOT NULL,
    staff_id INTEGER NOT NULL,
    inventory_id INTEGER NOT NULL,
    last_update DATETIME NOT NULL
);



CREATE UNIQUE INDEX af_foreign_Actors ON ACTORS(first_name, last_name);
	ALTER TABLE ACTOR_FILM ADD FOREIGN KEY (first_name_actor, last_name_actor) REFERENCES ACTORS(first_name, last_name) ON DELETE RESTRICT;
CREATE UNIQUE INDEX af_foreign_films ON FILMS(title, release_year);
	ALTER TABLE ACTOR_FILM ADD FOREIGN KEY (title_film, release_year_film) REFERENCES FILMS(title, release_year) ON DELETE RESTRICT;

ALTER TABLE FILMS ADD FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) ON DELETE RESTRICT;

ALTER TABLE FILM_LANGUAGE ADD FOREIGN KEY (film_id) REFERENCES FILMS(film_id) ON DELETE RESTRICT;
ALTER TABLE FILM_LANGUAGE ADD FOREIGN KEY (language_id) REFERENCES LANGUAGES(language_id) ON DELETE RESTRICT;

ALTER TABLE FILM_INVENTORY ADD FOREIGN KEY (film_id) REFERENCES FILMS(film_id) ON DELETE RESTRICT;
ALTER TABLE FILM_INVENTORY ADD FOREIGN KEY (inventory_id) REFERENCES INVENTORIES(inventory_id) ON DELETE RESTRICT;

ALTER TABLE RENTALS ADD FOREIGN KEY (inventory_id) REFERENCES INVENTORIES(inventory_id) ON DELETE RESTRICT;


