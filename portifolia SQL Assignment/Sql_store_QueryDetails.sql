USE sql_store;
select * from customers;
USE sql_store;
select * from customers order by first_name;



use sql_store;
SELECT last_name, first_name, points, 
points + 10  FROM CUSTOMERS;

SELECT last_name, first_name, points, 
points + 100  FROM CUSTOMERS;

/*Change the Query 2 code to create a discount factor so the table now 
shows a discount header and changing the (point + 10) *100*/
SELECT last_name, first_name, points, 
points + 10, (points + 10) *100 as discount_factor FROM CUSTOMERS;
/* Write a SQL query to return all the products in our database in the result 
set. I want you to show columns; name, unit price, and new column called 
new price which is based on this expression, (unit price * 1.1 ). */
select name,unit_price,(unit_price * 1.1 ) as new_price from products;

/*• In this task create a new query to find all the customers with a birth date 
of > '1990-01-01'*/
select* from customers where birth_date>'1990-01-01';
/*• Select sql_inventory.
• Write a query to find out the name of the product with most amount in 
stock.*/
use sql_inventory;
desc products;
select name from products where quantity_in_stock = ( select max(quantity_in_stock) from products ) ;
/*• Select sql_inventory.
• Write a query to find out the name of the most expensive product.*/
select name from products where unit_price = ( select max(unit_price) from products ) ;
/*Select sql_store.
• Write a query to find out the first name, last name, address and the 
birthdate of the oldest customer.*/
use sql_store;
desc customers;
select first_name,last_name,address,birth_date from customers order by birth_date limit 1;
