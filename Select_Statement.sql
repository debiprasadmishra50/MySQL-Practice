USE coffee_store_management;

show tables;

Select * from customer; -- * means return all the columns and all the datas present in the Table
Select * from product;
Select * from orders;

select * from product where id = 1;

Select first_name from customer;

Select first_name, last_name, phone_no from customer;

Select * from customer where last_name = 'Martin';

Select * from product;

Select * from product where coffee_origin = 'Columbia';

Select * from product where coffee_origin = 'Columbia' AND price = 3.00;

Select * from product where coffee_origin IN ('Columbia', 'Costa Rica');

Select * from product where price > 3.00 AND price < 3.50 AND id=5;

Select * from product where coffee_origin = 'India' OR coffee_origin = 'Indonesia';

Select * from customer;

Select * from customer where phone_no IS NULL AND last_name IS NULL;

Select * from customer where phone_no IS NOT NULL AND last_name IS NULL;

Select * from customer where gender='F';

Select * from product where coffee_origin IN ('Columbia', 'Costa Rica');

Select * from product where coffee_origin NOT IN ('Columbia', 'Costa Rica');

Select name, price from product where name='Latte';

Select name, price from product where price <= 3.00;

Select * from orders where customer_id between 5 AND 8;

select * from customer where last_name Like 'W%';

select * from customer where last_name Like 'W%' AND last_name Like '%S';

select * from customer where last_name Like '%S';

select * from customer where last_name Like '%a%' AND last_name LIKE '%r%';

select * from customer where last_name Like '%a%' AND last_name LIKE '%r%' AND 
			phone_no IS NULL;

select * from customer where last_name Like '%ar%';

select * from customer where last_name Like '%o_';
select * from customer where last_name Like '_o%';


Select first_name, last_name from customer order by 
		last_name ASC, first_name ;
        
Select * from product order by price ASC, name DESC;

Select * from orders where customer_id = 1 order by order_time DESC;

select distinct coffee_origin from product;

select distinct product_id from orders;

Select * from product;
Select id AS Product_ID, name AS Coffee, price as Currency, coffee_origin AS Country
	from product;

Select * from orders limit 5;
Select * from orders limit 5 offset 10;
Select * from orders order by id DESC limit 5;
Select * from orders order by id DESC limit 5 offset 5;

Select * from orders where id between 52 AND 60 order by id DESC limit 5;

select * from orders where product_id > 5 AND customer_id 
				between 10 AND 15 order by id DESC limit 5;

select * from orders order by id DESC limit 5;

-- Wanna see phone nos of 5 customers, lastname starting with B, gender is M
select phone_no AS 'Contact Number' from customer 
			where gender='M' AND last_name LIKE 'B%' limit 5;
            
Select first_name AS 'First Name', last_name AS 'Last Name' from customer
				where last_name = 'Bluth' order by first_name ASC limit 5 ;
        
SELECT * FROM `product`;
         
Select * from product where coffee_origin IN ('Columbia','Costa Rica', 'Indonesia')
			AND price >= 3.00 order by name ASC;
    
Select Distinct first_name AS 'First Name', last_name AS 'Last Name', phone_no AS 'Contact NO'
from customer where gender = 'M' AND phone_no IS NOT NULL AND 
last_name NOT LIKE 'A%' AND last_name NOT LIKE 'M%' AND last_name NOT LIKE 'B%'
order by last_name ASC limit 5;
-- Distinct is working because they have different phone_no, remove the phone_no and
	-- You can see there will be one John


Select Distinct first_name AS 'First Name', last_name AS 'Last Name', phone_no AS 'Contact NO'
from customer Where gender = 'M' AND first_name = 'John';