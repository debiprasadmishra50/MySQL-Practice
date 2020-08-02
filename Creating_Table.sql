-- A file is called as Script
-- Every command is called as Query
show databases; -- Show the databases present in MySQL Server that you have created

-- DQL
create database if not exists coffee_store_management; -- create a Database

drop database coffee_store_management; -- delete a Database

USE coffee_store_management; -- Which database you want to use

show TabLes; -- Shows tables that are present in the DB

-- DDL : To create and manipulate database object
-- Create Product table
CREATE TABLE product(
	id INT auto_increment Primary Key,
    name Varchar(30),
    price decimal(3,2)
);

desc product; -- Describe Table

drop table product; -- Drop a Table

select * from product; -- To see all the Table data
select id from product; -- To see only the id column

CREATE TABLE customer(
	id INT auto_increment Primary Key,
    first_name Varchar(50),
    last_name Varchar(30),
    gender Enum('M','F'),
    phone_no Varchar(10) UNIQUE Not Null
);

drop table customer;
desc customer;
select * from customer;

CREATE TABLE orders(
	id INT auto_increment Primary Key,
    product_id INT,
    customer_id INT,
    order_time datetime,
    foreign key (product_id) references product(id),
    foreign key (customer_id) references customer(id)
);

desc orders;
drop table orders;
select * from orders;

-- Junction Table
Create table order_detail (
	product_id INT,
    order_id INT,
    foreign key (product_id) references product(id),
    foreign key (order_id) references orders(id)
);

