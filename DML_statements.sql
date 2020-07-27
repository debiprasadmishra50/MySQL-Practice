USE coffee_store_management;

show tables;

desc product;

-- SET SQL_SAFE_UPDATES = 0;

select * from product;

Insert into product (name, price, coffee_origin) 
				values('Cappuccino', 3.50, 'Colombia');

Insert into product (name, price, coffee_origin) 
				values('Espresso', 5.50, 'Sri Lanka');

Insert into product (name, price, coffee_origin) 
				values('Black Coffee', 1.30, 'Brazil');

Update product Set price=5.50 where id=1;
Update product Set coffee_origin='India' where price=1.30;

Update product Set coffee_origin='India' where id=8;

Delete from product where id = 4;
Delete from product;
Delete from product where price=3.50;

Delete from product where id > 6;
Delete from product where id IN(5,12,14);