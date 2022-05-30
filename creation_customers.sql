CREATE TABLE СUSTOMERS
(
    id int primary key auto_increment,
    name varchar(255) not null,
    surname varchar(255),
    age int check ( age > 0 ), check ( age < 150 ),
    phone_number varchar(255) not null default 'unknown'
);

