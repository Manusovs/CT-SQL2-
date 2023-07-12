--Insert statement for purchase data
insert into purchase(
	purchase_id,
	purchase_time,
	cost_
	)VALUES(
	1,
	'1/1/2021 5:15pm',
	12.75);
insert into purchase(
	purchase_id,
	purchase_time,
	cost_
	)VALUES(
	2,
	'1/1/2021 5:25pm',
	6.25);

--Insert statement for movie data
insert into movie(
	movie_id,
	movie_length,
	genre,
	actors
	)VALUES(
	1,
	135.4,
	'Comedy',
	'Ace Venn, Jeremy Sokolov');
	
--Insert statement for customer data
	insert into customer(
	customer_id,
	first_name,
	last_name,
	zipcode,
	age_, 
	family_size,
	most_recent_movie
	)VALUES(
	1,
	'Joel',
	'Baker',
	'77779',
	24,
	1,
	1);

--Insert statement for concessions data
	insert into concessions(
	consession_id,
	item_category,
	item_description,
	purchase_id
	)VALUES(
	1,
	'popcorn',
	'Large popcorn extra butter',
	2);
	
--Insert statement for ticket data
insert into ticket(
	ticket_id,
	customer_id,
	movie_id,
	purchase_id
	)VALUES(
	1,
	1,
	1,
	1);
