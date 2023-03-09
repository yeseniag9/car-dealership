insert into salesperson(
	salesperson_id,
	first_name,
	last_name
) values (
	1,
	'Joe',
	'Smith'
);

insert into car(
	car_id,
	make,
	model,
	car_year,
	mileage
) values (
	1,
	'Jeep',
	'Wrangler',
	2023,
	0
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	drivers_license,
	billing_info,
	car_id
) values (
	1,
	'Bob',
	'Johnson',
	'S84581224900',
	'814 Bean Ave Chicago, IL 51376',
	1
);

create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _drivers_license VARCHAR, _billing_info VARCHAR, _car_id INTEGER)
returns void
as $MAIN$
begin 
	insert into customer(customer_id, first_name, last_name, drivers_license, billing_info, car_id)
	values (_customer_id, _first_name, _last_name, _drivers_license, _billing_info, _car_id);
end;
$MAIN$
language plpgsql;

select add_customer(2, 'Jessica', 'Simpson', 'G16478309814', '583 Jump Dr Denver, CO 62893', 1);

create or replace function add_car(_car_id INTEGER, _make VARCHAR, _model VARCHAR, _car_year INTEGER, _mileage INTEGER)
returns void
as $MAIN$
begin 
	insert into car(car_id, make, model, car_year, mileage)
	values (_car_id, _make, _model, _car_year, _mileage);
end;
$MAIN$
language plpgsql;

select add_car(2, 'Nissan', 'Altima', 2017, 20);