CREATE TABLE ORDERS
(
    id int auto_increment primary key,
    date timestamp not null default now(),
    customer_id int,
    product_name varchar(255) not null,
    amount int not null check ( amount > 0 ),
    FOREIGN KEY (customer_id) REFERENCES netology.СUSTOMERS(id)

);
