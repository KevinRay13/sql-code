CREATE TABLE person (
    id SERIAL,
    name varchar(255),
    age int,
    height int,
    city varchar(255),
    favorite_color varchar(255)
   
);
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Kevin', 23, 50, 'Boerne', 'green' );
VALUES ('Braxton', 20, 50, 'Boerne', 'blue' );
VALUES ('Bridget', 12, 50, 'Boerne', 'pink' );
VALUES ('Judy', 21, 50, 'San Antonio', 'red' );
VALUES ('Matt', 28, 50, 'OKC', 'grey' );

SELECT height
FROM person
ORDER BY height DESC;

SELECT height
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * 
FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * 
FROM person 
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * 
FROM person 
WHERE favorite_color IN ('yellow', 'purple');



CREATE TABLE orders (
    person_id SERIAL,
    product_name varchar(255),
    product_price numeric,
    quantity integer );
  
  INSERT INTO orders (person_id, product_name, product_price, quantity) 
  VALUES (0, 'phone', 200, 3),
  VALUES (1, 'watch', 250, 2);

  SELECT * FROM orders;
  SELECT sum(qauntity) FROM orders;
  SELECT sum(product_price * quantity) FROM orders;
  SELECT sum(product_price * quantity) FROM person_id = 0;

  INSERT INTO artist ('name') 
  VALUES ('jon');
  VALUES ('joan');
  VALUES ('juan');
  
  SELECT *
FROM artist
ORDER BY name ASC LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary'

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

 SELECT * FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards'

SELECT * FROM employee WHERE reports_to = 2

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

select COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;




