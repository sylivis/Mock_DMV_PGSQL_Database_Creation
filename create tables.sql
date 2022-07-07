--CUSTOMER - EMPLOYEE - 

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone VARCHAR(20)
	);
	
CREATE TABLE employee (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(20),
	emergency_contact VARCHAR(100),
	employee_type VARCHAR(100)
	);

CREATE TABLE cars(
	car_id SERIAL PRIMARY KEY,
	vin VARCHAR(50),
	make VARCHAR(50),
	model VARCHAR(50),
	year_ INTEGER,
	min_asking_price NUMERIC(10,2),
	sold BOOLEAN 
);

CREATE TABLE sale_invoice(
	invoice_id SERIAL PRIMARY KEY,
	employee_id INTEGER,
	customer_id INTEGER,
	car_id INTEGER,
	amount NUMERIC(10,2),
	date_ TIMESTAMP WITHOUT TIME ZONE,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	price numeric(10,2),
	part_needed VARCHAR(100),
	customer_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

CREATE TABLE employee_service_record(
	work_id SERIAL PRIMARY KEY,
	labor_hours INTEGER,
	ticket_id INTEGER,
	employee_id INTEGER,
	day_completed TIMESTAMP WITHOUT TIME ZONE,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);






