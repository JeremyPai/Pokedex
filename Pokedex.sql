/* Create database */
DROP DATABASE IF EXISTS pokemon_go;
CREATE DATABASE pokemon_go;

/* List every databases */
SHOW DATABASES;

/* Use specific database */
USE pokemon_go;



/* Disable safe update mode */
SET SQL_SAFE_UPDATES = 0;

/* Create table */
CREATE TABLE pokemon(
    pokeindex INTEGER NOT NULL KEY,
    pokename VARCHAR(25),
    height FLOAT,
    weight FLOAT
);

/* Modify table */
ALTER TABLE pokemon ADD evolve VARCHAR(10);
ALTER TABLE pokemon ADD evolveName VARCHAR(25);

ALTER TABLE pokemon DROP evolveName;

/* Show the columns of specific table */
DESCRIBE pokemon;

/* Preserve structure of table, and delete values */
/* TRUNCATE TABLE pokemon; */



/* Insert values into specific table */
INSERT INTO pokemon VALUES(1, "Bulbasaur", 0.7, 6.9, "YES");
INSERT INTO pokemon VALUES(25, "Pikachu", 0.4, 6.0, "YES");
INSERT INTO pokemon VALUES(149, "Dragonite", 2.2, 210.0, "NO");
INSERT INTO pokemon VALUES(150, "Mewtwo", 2.0, 122.0, "NO");
INSERT INTO pokemon VALUES(131, "Lapras", 2.5, 220.0, "NO");
INSERT INTO pokemon VALUES(144, "Articuno", 1.7, 55.4, "YES");

/* Select data from specific table */
SELECT * FROM pokemon;



/* Update value of specific pokeindex */
UPDATE pokemon SET evolve = "NO"
WHERE pokename = "Articuno";

/* Delete value of specific pokeindex */
DELETE FROM pokemon
WHERE pokeindex = 150;

/* Select data from specific table */
SELECT * FROM pokemon;



/* Lots of selecting method */
SELECT pokename FROM pokemon 
WHERE height > 0.5 AND pokeindex > 5; 

SELECT pokename FROM pokemon 
WHERE height > 0.5 OR pokeindex > 5;

SELECT pokename FROM pokemon 
WHERE pokeindex BETWEEN 10 AND 150;

SELECT pokename, pokeindex, evolve FROM pokemon;

SELECT DISTINCT pokename FROM pokemon;

SELECT * FROM pokemon
WHERE pokename IS NULL;

SELECT * FROM pokemon LIMIT 2, 3;

SELECT * FROM pokemon
WHERE pokename LIKE '%LA%';

/* Sort values */
SELECT * FROM pokemon
ORDER BY pokeindex DESC; 

/* Group values */
SELECT evolve, COUNT(*) FROM pokemon
GROUP BY evolve
HAVING COUNT(*) > 2;


/* Delete table */
DROP TABLE pokemon;

/* Delete database */
DROP DATABASE pokemon_go;
