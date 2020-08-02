DBMS (Database Management System)
==============================================
Application
-------------------
	- 2 types
		1. Standalone App (.exe, .apk, .msi)
		2. Web App

Database
---------------
	- Data can be stored by 2 different ways
		1. RAM (with the help of variable/ array/...) - Primary Device
		2. Secondary Device
			- HDD (Hard Disk Drive) / SSD (Solid State Drive)  / CD Drive/ Floppy Drive
			- Database Server

	Drawbacks of a File when stored in a HDD
	----------------------------------------------
		- Not Secure
		- Less Storage Data / Limited
		- Data Duplicacy
		- Not Structred
		- Doesnot support relation
		- Not Sharable
		- Doesnot support ACID (atomicity, consistency, isolation, durability)

	- To overcome these drawbacks we use Database

	Database
	----------------
		- It is a platform where we can store data as well as manipulate it as we like.
		- Databse is a collection of "Objects"
		- Objects : those who have physical existance within database server

		- Database supports 2 types of Objects
			1. Primary Object (Table)

			2. Secondary Objects :  View
									Constraints
									Sequence
									Synonym
									Index
									Procedure
									Trigger
									Function
									Schemas
									...etc

		- All the Secondary Objects are partially or fully dependant on Primary Object
			- Constraints and Index, these 2 are fully dependent

	- Database is a collection of Tables (College Databse : Tables will be : Student, Teachers, Departments,...)
	- Tables is the collection of Records (Student Table : Roll, DOB, CGPA, Age)
	- Records is the collection of Informations (101, 10.2.2020, 9.8, 15)
	- Information is the processesd Data ( Roll - 101)
	- Data is Raw-Facts (101)

	- Databse is divided into 2 parts
		1. Server Side
		2. Client Side

	**2 types of communications
		1. IPC - Inter Process Communication (Server and Client, both are running on the same/local system)
		2. RPC - Remote Process Communication (Server and Client, both are running on the Different system)
			e.g. Facebook, Google
	
	DBMS
	===============
		Database + Management System = DBMS

		Management System : Set of programs to store and retrieve and manipulate the Database

		- Collection of inter-related data and set of programs to store and manipulate and access tjose data in an easy and effective manner is known as Database Management System.

	Architecture of an Application
	==========================================
		- 3 types of application
		1. 1 Tier
		2. 2 Tier
		3. 3 Tier

		1 Tier
		--------------
			- IPC
			- Everything is running on 1 PC
			- DB is on Client Machine, Request made by client doesnot need any network connection to perform action on Database

		2 Tier 
		--------------
			- Client DBMS app directly communicates with Database through interface like JDBC, ODBC, ADO ...etc

		3 Tier 
		---------------


	Database Selling Companies
	--------------------------------
		- Microsoft : Ms-Access
					Ms-Sqlsession

		- Oracle : MySQL
					Oracle DB

		- IBM : DB2
				peoplesoff

		- MongoDB 


	Types of DB(in aspect of Relation)
	=========================================
		1. Relational Database : The primary and secondary are inter-related, data stored in binary format
			e.g. MySQL, Oracle
		2. Non-relational Database : The primary and secondary and not-related, data stored in BSON of JSON format
			BSON : Binary JSON(JavaScript Object Notation)
			e.g. MongoDB





	MySQL
	========================
		- SQL(Structured/Standard Query Language)
		- SQL supports 5 sub-languages
			1. DQL (Data Query Language)
			2. DDL (Data Definition Language)
			3. DML (Data Manipulation Language)
			4. TCL (Transaction Control Language)
			5. DCL (Data Control Language)

	- Relational DBMS is collection of data organised into Tables
	- Tables contain columns of data category and rows with instances
	- Dafault user for MySQL is "root"
	- Dafault user for Oracle is "system"
	- Query : A command that is written and executed on Database to perform a specific task.

	- Database Operation is known as CRUD Operation
		C : Create
		R : Read
		U : Update
		D : Delete

	DQL (Data Query Language)
	----------------------------
		Show Databases;
		SELECT

	DDL (Data Definition Language) / OML(Object Manipulation Language)
	--------------------------------------------------------------------
		- MySQL provides 5 statements for DDL
			1. Create
			2. Alter
			3. Drop
			4. Rename
			5. Truncate

		1. Create
		----------------
			- it is used to create an object like Table, View, Synonym, Index ...etc

			syntax to create a table
			-----------------------------
				Create table table_name
				(
					column1_name Datatype(Size) constraint,
					column2_name Datatype(Size) constraint,
				);

			Datatype
			--------------
				- it shows what kind of data that a column can store


		Numeric 									Non-Numeric 								Date and Time 
		-------------------------------------------------------------------------------------------------------------------------
		INT(N) 										CHAR(N) 									Date : (YYYY-MM-DD)			
		Float(M,D) 									VarChar(N) 									DateTime : (YYYY-MM-DD HH-MM-SS)
		Decimal(M,D)								Enum('M','F')								Time : (HHH-MM-SS)
													Boolean 									Year : (YYYY)
		1.55
		M : 3
		D : 2

			Constraints
			---------------------
				Auto_Increment : Automatically Increment the Column Data in a NumbeR row
				Primary Key
				Foreign Key
				Unique Key : Every Data in the column must be Unique
				Not Null : The column can contain a Null Value

				Primary Key
				----------------
				- It states a column to hold uniquely identifies a record in a column within a table
				- Each new entry must be different
				- A table can only have ONE primary key
				- It can not be null or duplicate data
				- It is used as a reference for Foreign Key

				Foreign Key
				---------------------
				- Used to link 2 Tables
				- A column whose values match the values of another column of another tables Primary Key column.
				- Primary Key column Table is the reference or Parent table & Foreign key Table is the Child Table
				- Table can have Multiple Foreign Keys

				syntax
				--------------
					foreign key (col_name of current_table) references parent_table_name (parent_table_column_name)

					

		2. Alter
		------------------
			- This is used to manipulate with the Table
				a. Adding a new column to the table
				b. Remove a column from the table
				c. Rename a column and change its signature
				e. Adding and removing of Constraints
					i. Primary Key
					ii. Foreign Key
					iii. Unique Key

		3. Drop
		------------
			- Drop is used to Delete or Remove a table permanently

		4. Rename
		---------------
			- It is used to rename a table

		5. Truncate
		------------------
			- Is is used to delete all the records from a table permanently.



	DML(Data Manipulation Language) / RML(Record Manipulation Language)
	=================================================================================
		- It supports 3 commands
			1. Insert
			2. Update
			3. Delete

		1. Insert
		-------------------
			syntax
			-----------------
				Insert into <table_name> (col1, col2, col3...) values (val1, val2, val3...);
					- For specific columns

				Insert into <table_name> values(give values for all the columns);

		2. Update
		----------------
			syntax
			------------
				Update table_name Set col_name='Desired_Value' Where col_name='col_name';

		3. Delete
		-------------
			syntax
			-----------	
				Delete from table_name;	 : To Delete all records at a time

				Delete from table_name Where col_name=col_value;    :  To Delete a specific Record


	DQL(Data Query Language) / ORL(Object Retrieval Language)
	---------------------------------------------------------------
		SELECT

		Clauses
		-------------------
			- It is an additional paramater used to retrieve a specific amount of data

			e.g,
				Where, AND, OR, Between, In, NOT IN, AS, LIKE, IS, Order By, ASC, DESC, Distinct, Limit





Joins
=========================
	- Joins allows you to to retrieve the data from multiple tables in a single select statement
	- To join or to retrieve from 2 tables, it needs to have a related column between them
	- there are many types of joins 
		1. Inner Join
		2. Left Join
		3. Right Join

	1. Inner Join
	--------------------------
		- Retreive the data only when there is matching values in both tables

		syntax
		--------------
					{Which Columns you want 
								to Display}
			Select T1.col_name, T2.col_name from Child_Table_name INNER JOIN Parent_Table_Name ON Child_Column = Parent_Column;



	2. Left Join
	------------------------
		- Retrieve all the data from Table1 and matching rows from Table2

	2. Right Join
	------------------------
		- Retrieve all the data from Table2 and matching rows from Table1



Database Design
=======================================
	- Normalization
	- Relationship
	- Constraints

	Normalization
	---------------------
		- Process of efficiently organising records in the database

		Why
		----------	
			- It is used to remove the redundant data, Not to store duplicate rows in a table
			- To only store related data in a table, not storing the same data in different table

		Benifits
		-----------------
			- Reduces Storage space
			- Improving Query performance
			- Reduce insert, update and deletion process or execution

		Levels
		-------------
			1. 1st Normal form
			2. 2nd Normal form
			3. 3rd Normal form
			4. Boyce and Codd Normal Form (BCNF)

		1. 1st Normal form
		-------------------------
			- It has
				- No Repeated Rows of data
				- Columns only contain a single value
				- Table has to have a primary key


		2. 2nd Normal Firm
		-------------------------
			- 1NF + Every Column that is not a primary key of the table is dependent on whole of primary key.

		3. 3rd Normal form
		--------------------------
			- 2NF + Every Column that is not a primary key of the table is Only Dependent on whole of primary key.


	Relationship
	--------------------
		- Tables are related to each other by Foreign Key and Primary Key
		- There are 3 types of relation
			- One TO One Relationship
			- One TO Many Relationship
			- Many TO Many Relationship

		One TO One Relationship
		-----------------------------
			- Key to one table appears no more than once, as key in another table & Vice Versa
				- Product TO Product_Details

		One TO Many Relationship
		-----------------------------------
			- A Primary Key column of one table can be in multiple rows of a foreign key column of another table

		Many TO Many Relationship
		--------------------------------
			- In here 2 tables can have as many instances of each other
				Order_Detail table connecting Product and Orders

				Order_Detail is Junction Table

	Constraints
	------------------
		- Constraints are placed on columns within Tables and they used to restrict what values can be entered into these columns
		Not Null : A column name can not ccontain a Null Value
		Unique Key : A column can not contain duplicate value
		Primary Key : uniquely identifies each row
		Foreign Key : Column which is related to Primary Key in Parent Table
		Check : Controls the values that can be inserted into a column( Movie ratings between 0 to 10)
		Default : If no values were entered into a column then the default value will be taken as a replacement


	













