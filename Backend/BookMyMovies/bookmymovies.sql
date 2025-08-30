create database Bookmymovies;
use Bookmymovies;

create table users
(
user_id int primary key auto_increment,
name varchar(30),
email varchar(30),
phone varchar(30)
);

create table movies
(
movie_id int primary key auto_increment,
title varchar(30),
genre varchar(30),
lang varchar(30),
duration int(30)
);

create table theaters
(
theater_id int primary key auto_increment,
name varchar(30),
city varchar(30)
);

create table shows(
show_id int primary key auto_increment,
movie_id int,
theater_id int,
timing varchar(30),
available_seat int,
foreign key (movie_id) references movies(movie_id),
foreign key (theater_id) references theaters(theater_id)
);

create table seat
(
seat_id int primary key auto_increment,
show_id int,
seat_number varchar(10),
is_booked boolean default false,
foreign key (show_id) references shows(show_id)
);

create table bookings
(
booking_id int primary key auto_increment,
user_id int,
show_id int,
seats_booked varchar(30),
total_price decimal(10,2)
);

insert into users (name,email,phone) values
('Ashwani Kumar', 'ashwani@gmail.com', '8765743291'),
('Ayan', 'ayan@gmail.com', '7654328764'),
('Manish', 'manish@gmail.com', '9876543758');

 insert into movies(title,genre,lang,duration) values
 ('Chhava', 'History', 'Hindi', 148),
 ('Pati patni or woh', 'Romantic-comdey', 'Hindi', 140),
 ('Ironman', 'Action', 'English', 180),
 ('Pushpa', 'Thriller', 'Telgu', 160),
 ('KGF', 'Action', 'Hindi', 170);

insert into theaters (name,city) values
('PVR', 'Delhi'),
('INOX', 'Agra'),
('IMAX', 'pune'),
('Cinepolis', 'Mumbai');
insert into theaters (name,city) values
('Meeraj', 'Nashik');

insert into shows(movie_id,theater_id,timing,available_seat) values
(1,1,'10:00 AM',40),
(1,2,'03:00 PM',50),
(2,3,'07:00 PM',60),
(3,4,'09:00 PM',30),
(4,5,'09:00 PM',30),
(5,2,'04:00 PM',35)

ALTER TABLE shows
CHANGE available_seat available_seats int;

insert into seat(show_id, seat_number, is_booked) values
(1, 'A1', FALSE),(1, 'A2', FALSE),(1, 'A3', FALSE),(1, 'A4', FALSE),(1, 'A5', FALSE),(1, 'A6', FALSE),
(2, 'B1', FALSE),(2, 'B2', FALSE),(2, 'B3', FALSE),(2, 'B4', FALSE),(2, 'B5', FALSE),(2, 'B6', FALSE),
(3, 'C1', FALSE),(3, 'C2', FALSE),(3, 'C3', FALSE),(3, 'C4', FALSE),(3, 'C5', FALSE),(3, 'C6', FALSE),
(4, 'D1', FALSE),(4, 'D2', FALSE),(4, 'D3', FALSE),(4, 'D4', FALSE),(4, 'D5', FALSE),(4, 'D6', FALSE),
(5, 'E1', FALSE),(5, 'E2', FALSE),(5, 'E3', FALSE),(5, 'E4', FALSE),(5, 'E5', FALSE),(5, 'E6', FALSE);

insert into bookings(user_id, show_id, seats_booked, total_price) values
(1,1,'A1, A2', 400);

update seat set is_booked=TRUE where show_id=1
and seat_number IN ('A1','A2');

select * from bookings;
select * from seat;
