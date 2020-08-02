USE coffee_store_management;

show tables;

select * from product;
desc product;

Alter table product add column coffee_origin Varchar(30); -- create a new column

Alter table product drop column coffee_origin; -- drop an existing column

Alter table product change coffee_origin origin char(30); -- Rename a Column

Alter table product modify origin Varchar(30); -- changing the Datatype

desc customer;
Alter table customer modify phone_no Varchar(11);

Alter table orders add constraint foreign key 
						(product_id) references product(id);

Alter table product add column product_id INT;

Alter table product add constraint foreign key 
						(product_id) references product(id);

Alter table product drop foreign key product_ibfk_1;
ALTER TABLE PRODUCT DROP COLUMN product_id;
desc product;
