--Запрос на создание базы данных

CREATE TABLE `u385484_tt`.`QAL_cinema` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`film` VARCHAR(250) NULL DEFAULT NULL,
	`director` VARCHAR(250) NULL DEFAULT NULL,
	`id_country` INT(11) NULL DEFAULT NULL,
	`id_genre` INT(11) NULL DEFAULT NULL,
	`date` DATE NULL DEFAULT NULL
);

CREATE TABLE `QAL_country` (
	`id_country` INT(11) NOT NULL AUTO_INCREMENT,
	`country` VARCHAR(250) NULL DEFAULT NULL
);

CREATE TABLE `u385484_tt`.`QAL_genre` (
	`id_genre` INT(11) NOT NULL AUTO_INCREMENT,
	`genre` VARCHAR(250) NULL DEFAULT NULL
);

--Запросы на наполнение таблицы

INSERT INTO `u385484_tt`.`QAL_cinema` (`film`, `director`, `id_country`, `id_genre`, `date`)
 VALUES ('Шерлок Холмс и доктор Ватсон: Знакомство', 'Игорь Масленников', '1', '1', '1980-06-22');

INSERT INTO `u385484_tt`.`QAL_cinema` (`film`, `director`, `id_country`, `id_genre`, `date`)
 VALUES ('Интерстеллар', 'Кристофер Нолан', '2', '2', '2014-10-26');
 
INSERT INTO `u385484_tt`.`QAL_cinema` (`film`, `director`, `id_country`, `id_genre`, `date`) 
 VALUES ('Леон', 'Люк Бессон', '3', '3', '1994-09-14');
 
INSERT INTO `u385484_tt`.`QAL_cinema` (`film`, `director`, `id_country`, `id_genre`, `date`)
 VALUES ('Твоё имя', 'Макото Синкай', '4', '4', '2016-07-03');
  
INSERT INTO `u385484_tt`.`QAL_cinema` (`film`, `director`, `id_country`, `id_genre`)
 VALUES ('Операция ы и другие приключения Шурика', 'Леонид Гайдай', '1', '5'); 
 -- Добавить заполнение других таблиц
 
--Запрос на обновление данных

UPDATE `u385484_tt`.`QAL_cinema`
 SET `date`='1965-07-23' 
 WHERE  `id`=5;
 
--Запросы на получение данных

SELECT `film`, `director` FROM `u385484_tt`.`QAL_cinema`

SELECT * FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_country`
ON QAL_cinema.id_country=QAL_country.id_country;

SELECT * FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_genre`
ON QAL_cinema.id_genre=QAL_genre.id_genre;

SELECT * FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_country`
ON QAL_cinema.id_country=QAL_country.id_country
INNER JOIN `QAL_genre`
ON QAL_cinema.id_genre=QAL_genre.id_genre;

SELECT `film`, `director`, `DATE`, `genre` FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_country`
ON QAL_cinema.id_country=QAL_country.id_country
INNER JOIN `QAL_genre`
ON QAL_cinema.id_genre=QAL_genre.id_genre;

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE id=3;

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE film = 'Интерстеллар';

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE film LIKE '%лео%'

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE director LIKE 'Игорь%'

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE date < '2000-01-01'

SELECT `film`, `director` FROM `u385484_tt`.`QAL_cinema`
WHERE date < '2000-01-01'

SELECT * FROM `u385484_tt`.`QAL_cinema`
WHERE `date` NOT LIKE '1965-07-21';

SELECT DISTINCT `country` FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_country`
ON QAL_cinema.id_country=QAL_country.id_country
INNER JOIN `QAL_genre`
ON QAL_cinema.id_genre=QAL_genre.id_genre
order by `country` deSC 

SELECT * FROM `u385484_tt`.`QAL_cinema`
INNER JOIN `QAL_country`
ON QAL_cinema.id_country=QAL_country.id_country
INNER JOIN `QAL_genre`
ON QAL_cinema.id_genre=QAL_genre.id_genre
order by `date` DESC 


--Запрос на удаление строки

DELETE FROM `u385484_tt`.`QAL_cinema` 
WHERE  `id`=555 --чтобы нечаяно не удалить что-то нужне

-- Удаление таблицы

DROP TABLE `u385484_tt`.`QAL_cinema` --имя изменено чтобы нечаяно не удалить