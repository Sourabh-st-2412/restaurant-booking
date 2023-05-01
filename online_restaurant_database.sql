create database Online_Restaurant_Booking;
use Online_Restaurant_Booking;

create table registration
(
	user_id int auto_increment primary key,
    name nvarchar(45),
    email nvarchar(45),
    contact bigint(10),
    password nvarchar(45),
    cpassword nvarchar(45),
    date nvarchar(45)

);



create table user_booking
(
	booking_id int auto_increment primary key,
    booking_date nvarchar(45),
	user_id int, 
    name nvarchar(45),
    date nvarchar(45),
    guest_no int,
    shift nvarchar(45),
    room nvarchar(45), 
    time nvarchar(45),
    menu_id int,
    bookingtype nvarchar(45),
    menu_name nvarchar(45),
    menu_type nvarchar(45),
    quantity int,
    price nvarchar(45),
    total nvarchar(45),
    bstatus nvarchar(45)
);
 
 create table user_menu_book
 (
	order_id int auto_increment primary key,
	user_id int, 
    name nvarchar(45),
    date nvarchar(45),
	menu_id int,
    menu_name nvarchar(45),
    menu_type nvarchar(45),
    quantity int,
    price nvarchar(45),
    total nvarchar(45),
    address nvarchar(45),
    time nvarchar(45)
 );
 
 
 create table admin_add_menu
 (
	menu_id int auto_increment primary key,
    menu_name nvarchar(45),
    menu_type nvarchar(45),
    category nvarchar(45),
    image nvarchar(450),
    price nvarchar(45),
    date nvarchar(45)
 );
 
 create table user_payment
 (
	payment_id int auto_increment primary key,
    user_id int,
    name nvarchar(45),
    date nvarchar(45),
    payment_status nvarchar(45),
    payment_type nvarchar(45),
    order_id int,
    total nvarchar(45),
    booking_id int
 );
 
 create table feedback
 (
	feedback_id int auto_increment primary key,
    user_id int,
    name nvarchar(45),
    date nvarchar(45),
    feedback nvarchar(45),
    reply nvarchar(45),
    rating nvarchar(45)
    );
    
    create table cart
    (
    cart_id int auto_increment primary key,
    user_id int,
    name varchar(45),
    date nvarchar(45),
    menu_id int,
    menu_name nvarchar(45),
    menu_type nvarchar(45),
    category nvarchar(45),
    image nvarchar(45),
    price int,
    quantity int,
    total nvarchar(45)
    );