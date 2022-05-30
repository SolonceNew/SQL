/* 1-й вариант. В MySQL поиск по умолчанию является регистронезависимым */
SELECT product_name
FROM ORDERS
JOIN СUSTOMERS С on С.id = ORDERS.customer_id
WHERE С.name = 'alexey';

/* 2-й вариант */
SELECT product_name
FROM ORDERS
JOIN СUSTOMERS С on С.id = ORDERS.customer_id
WHERE С.name LIKE 'alexey' COLLATE utf8_general_ci;

/* 3-й вариант (насколько поняла не самый лучший */
SELECT product_name
FROM ORDERS
JOIN СUSTOMERS С on С.id = ORDERS.customer_id
WHERE UPPER(С.name) = UPPER('alexey') ;