create database if not exists test;
use test;

show tables;

drop table addresses;
drop table people;
drop table pets;

Create table addresses(
	id INT,
	house_number INT,
	city Varchar(20),
	post_code Varchar(7)
);

Create table people(
	id INT,
	First_name Varchar(20),
	Last_name Varchar(20),
	address_id INT
);

Create table pets(
	id INT,
	name Varchar(20),
	species Varchar(30),
	owner_id INT
);

desc addresses;
desc people;
desc pets;

Alter table pets rename dogs;
desc dogs;

Truncate table dogs;

Alter table pets add primary key (id); -- Add a primary key
Alter table people add primary key (id);
Alter table addresses add primary key (id);

Alter table pets drop primary key; -- remove primary key

-- Alter table <table_name> add constraint <constraint_Index_name> foreign key
		-- <child_table_column_name> references <parent_table_name>(<column_name>);
        
-- Alter table <table_name> add constraint <constraint_Index_name> Unique <column_name>;

Alter table people add constraint FK_PeopleAddress foreign key 
						(address_id) references addresses(id); -- Adding a Foreign Key

Alter table people drop foreign key FK_PeopleAddress; -- Removing a Foreign Key

Alter table pets add constraint U_species Unique (species); -- Adding a Unique Key

Alter table pets drop Index U_species; -- Removing a Unique Key / any Key