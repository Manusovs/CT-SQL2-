-- Primary Keys can't be empty or duplicated
-- Create Purchase table (no foreign keys)
create table purchase(
	purchase_id SERIAL primary key,
	purchase_time TIME,
	cost NUMERIC(5,2)	
	);

-- Create Movie table (no foreign keys)
create table movie(
	movie_id SERIAL primary key,
	movie_length NUMERIC(4,1),
	genre VARCHAR(30),
	actors VARCHAR(200)
	);

-- Create Customer table (first foreign key, uses different name than primary key)
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	zipcode VARCHAR(5),
	age_ INTEGER,
	family_size INTEGER,
	foreign key (most_recent_movie) references movie(movie_id)
	);
	
-- Create Concessions table (1 foreign key)
create table concessions(
	consession_id SERIAL primary key,
	item_category VARCHAR(30),
	item_description VARCHAR(200),
	foreign key (purchase_id) references purchase(purchase_id)
	);
	
-- Create Ticket table (3 foreign keys)
create table ticket(
	ticket_id SERIAL primary key,
	foreign key (customer_id) references customer(customer_id),
	foreign key (movie_id) references movie(movie_id),
	foreign key (purchase_id) references purchase(purchase_id)
	);