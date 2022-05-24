create table persons
(
    name varchar(255),
    surname varchar(255),
    age int check (age > 0), check (age < 150),
    phone_number varchar(255) not null default 'unknown',
    city_of_living varchar(255) not null,
    PRIMARY KEY (name, surname, age)

);

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Anna', 'Bolshaya', 19, '+77895674578', 'Moscow');

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Alex', 'Morozov', 32, '+7-789-567-6798', 'St. Petersberg');

insert into  persons (name, surname, age, phone_number, city_of_living)
values ('Natalya', 'Bereznaya', 29, '+7-789-567-4565', 'Kazan');

SELECT name, surname
FROM persons
WHERE city_of_living = Moscow;