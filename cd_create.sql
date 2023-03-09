create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table car(
	car_id SERIAL primary key,
	make VARCHAR(100),
	model VARCHAR(100),
	car_year INTEGER,
	mileage INTEGER
);

create table invoice(
	invoice_id SERIAL primary key,
	issue_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	car_id INTEGER not null, 
	customer_id INTEGER not null,
	foreign key(car_id) references car(car_id),
	foreign key(customer_id) references customer(customer_id)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	drivers_license VARCHAR(150),
	billing_info VARCHAR(150),
	car_id INTEGER not null,
	foreign key(car_id) references car(car_id)
);

create table service(
	service_id SERIAL primary key,
	parts_cost NUMERIC(10,2),
	car_id INTEGER not null, 
	customer_id INTEGER not null,
	foreign key(car_id) references car(car_id),
	foreign key(customer_id) references customer(customer_id)
);

create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);