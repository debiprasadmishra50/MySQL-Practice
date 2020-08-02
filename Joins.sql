USE coffee_store_management;

show tables;

Select * from orders;

-- Inner Join
Select product.name, orders.order_time from orders Inner Join product ON
			orders.product_id = product.id;

-- Select * from orders Inner Join product ON
			-- orders.product_id = product.id;

Select o.customer_id, p.name, p.coffee_origin, o.order_time 
			from orders o Inner Join product p ON o.product_id = p.id;


-- Left Join
select * from orders;
select * from customer;

Select o.id, c.first_name , c.phone_no, o.customer_id, o.order_time 
			from orders o Left Join customer c ON o.customer_id = c.id;

-- Right Join
-- Select o.id, c.first_name , c.phone_no, o.order_time 
			-- from customer c Right Join orders o ON o.customer_id = o.id;


Select o.id, c.first_name , c.phone_no, o.customer_id, o.order_time 
			from orders o Right Join customer c ON o.customer_id = c.id;
            
-- -------------------------------------------------------------------------

Select o.id, c.first_name , c.phone_no, o.customer_id, o.order_time 
			from orders o Right Join customer c ON o.customer_id = c.id;

Select * from orders o Join product p ON o.product_id = p.id;

select * from customer;
select * from product;
select * from orders;
Select * from orders, product; -- Full Outer Join
                    
Select o.id, c.first_name, p.id AS 'Product ID', p.name AS 'Product Name' from
	orders o 
    INNER JOIN product p ON o.product_id = p.id
    INNER JOIN customer c ON o.customer_id = c.id;

    
Select o.id, o.product_id, p.name, o.customer_id, c.first_name, o.order_time
	from orders o
    LEFT Join product p ON o.product_id = p.id
    LEFT JOIN customer c ON o.customer_id = c.id;
                    


Select o.id, p.id, p.name, o.customer_id, c.first_name, o.order_time
	from orders o
    LEFT Join product p ON o.product_id = p.id
    LEFT JOIN customer c ON o.customer_id = c.id;                    


Select p.id, p.name, c.first_name from product p, customer c;



Select o.id AS 'Order ID', c.first_name AS 'Customer Name', o.product_id AS 'Product ID', 
p.name as 'Product Name', o.order_time AS 'Order Time'
from orders o
LEFT JOIN product p ON o.product_id = p.id
LEFT JOIN customer c ON o.customer_id = c.id;



-- Find out all orders between 1-1-2017 to 15-01-2017 and display their their respective
-- product and customer names too

Select o.id AS 'Order ID', c.first_name AS 'Customer Name', o.product_id AS 'Product ID', 
p.name as 'Product Name', o.order_time AS 'Order Time'
from orders o
LEFT JOIN product p ON o.product_id = p.id
LEFT JOIN customer c ON o.customer_id = c.id
where o.order_time between '2017-01-01 00:00:00' AND '2017-01-01 23:59:59'
order by c.first_name limit 5;



