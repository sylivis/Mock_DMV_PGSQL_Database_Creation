--hire employee
CREATE SEQUENCE employee_num
  START 1
  INCREMENT 1;

CREATE OR REPLACE FUNCTION hire_employee(_first_name VARCHAR, _last_name VARCHAR, _phone_number VARCHAR, _emergency_contact VARCHAR, _employee_type VARCHAR)
RETURNS VOID
AS $MAIN$
BEGIN
		INSERT INTO employee(employee_id, first_name, last_name, phone_number,emergency_contact, eployee_type)
		VALUES(NEXTVAL('employee_num'), _first_name, _last_name, _phone_number, _emergency_contact, _employee_type);
END;
$MAIN$
LANGUAGE plpgsql;



--new customer
CREATE SEQUENCE customer_num;

CREATE OR REPLACE FUNCTION new_customer(_first_name VARCHAR, _last_name VARCHAR, _phone_number VARCHAR)
RETURNS VOID
AS $MAIN$
BEGIN
		INSERT INTO customer(customer_id, first_name, last_name, phone)
		VALUES(nextval('customer_num'), _first_name, _last_name, _phone_number);
END; 
$MAIN$
LANGUAGE plpgsql;



--sell car
CREATE SEQUENCE invoice_num;

CREATE OR REPLACE FUNCTION sell_car(_employee_id INTEGER, _customer_id INTEGER, _car_id INTEGER, _amount NUMERIC, _date TIMESTAMP)
RETURNS VOID
AS $MAIN$
BEGIN
	
		INSERT INTO sale_invoice(invoice_id, employee_id, customer_id, car_id, amount, date_)
		VALUES(nextval('invoice_num'), _employee_id, _customer_id, _car_id, _amount, _date);
		UPDATE cars 
		SET sold = TRUE;
		
END;
$MAIN$
LANGUAGE plpgsql;



--service car
CREATE SEQUENCE service_num;

CREATE OR REPLACE FUNCTION service_car(_price NUMERIC, _part_needed VARCHAR, _customer_id INTEGER, _car_id INTEGER)
RETURNS VOID
AS $MAIN$
BEGIN
		INSERT INTO service_ticket(ticket_id, price, part_needed, customer_id, car_id)
		VALUES(NEXTVAL('service_num'), _price, _part_needed, _customer_id, _car_id);
END;
$MAIN$
LANGUAGE plpgsql;



--assign work
CREATE SEQUENCE work_num;

CREATE OR REPLACE FUNCTION assign(_labor_hours INTEGER, _ticket_id INTEGER, _employee_id INTEGER, _day_completed TIMESTAMP)
RETURNS VOID
AS $MAIN$
BEGIN
		INSERT INTO employee_service_record(work_id, labor_hours, ticket_id, employee_id, day_completed)
		VALUES(NEXTVAL('work_num'), _labor_hours, _ticket_id, _employee_id, _day_completed);
END;
$MAIN$
LANGUAGE plpgsql;



--get new car
CREATE SEQUENCE car_num;

CREATE OR REPLACE FUNCTION new_car(_vin VARCHAR, _make VARCHAR, _model VARCHAR, _year INTEGER, _min_asking_price NUMERIC)
RETURNS VOID
AS $MAIN$
BEGIN
		INSERT INTO cars(car_id, vin, make, model, year_, min_asking_price, sold)
		VALUES(NEXTVAL('car_num'), _vin, _make, _model, _year, _min_asking_price, FALSE);
END;
$MAIN$
LANGUAGE plpgsql;
