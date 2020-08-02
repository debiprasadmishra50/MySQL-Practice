create database if not exists cinema_ticket_booking_system;

Use cinema_ticket_booking_system;

Create table customers (
	id INT Primary key auto_increment,
    first_name varchar(45) Default Null,
    last_name varchar(45) Not Null,
    email varchar(45) unique Not Null
);

Create table films (
	id INT primary key auto_increment,
    name Varchar(45) Unique Not Null,
    length_min INT Not Null
);

Create table rooms(
	id INT primary key auto_increment,
    name varchar(45) Not Null,
    no_seats INT Not Null
);

create table screenings (
	id INT primary key auto_increment,
    film_id INT Not Null,
    room_id INT Not null,
    start_time datetime Not Null,
    foreign key (film_id) references films(id),
    foreign key (room_id) references rooms(id)
);

create table seats (
	id INT primary key auto_increment,
    row char(1) Not Null,
    number INT Not Null,
    room_id INT Not Null,
    foreign key (room_id) references rooms(id)
);

create table bookings (
	id INT primary key auto_increment,
    screening_id INT Not Null,
    customer_id INT Not Null,
    foreign key (screening_id) references screenings(id),
    foreign key (customer_id) references customers(id)
);

create table reserved_seats (
	id INT primary key auto_increment,
    booking_id INT Not NUll,
    seat_id INT Not Null,
    foreign key (booking_id) references bookings(id),
    foreign key (seat_id) references seats(id)
);

show tables;