--populate employee table 

SELECT hire_employee('Lord', 'Farari', '555-555-5555', 'His Husband', 'Sales');

SELECT hire_employee('Madam', 'Porche', '565-555-5555', 'Her Wife', 'Mechanic');

SELECT hire_employee('Their', 'Son', '575-555-5555', 'their N/B partner', 'Mechanic');

--populate customer table

SELECT new_customer('JANE', 'DOE', '123-456-7890');

SELECT new_customer('John', 'Doe', '234-567-8901');

--get cars

SELECT new_car('as12as444', 'ford', 'F-150', '2013', 8000.00);

SELECT new_car('a1222a444', 'ford', 'F-150', '2012', 7000.00);

SELECT new_car('123hbh21', 'hundai', 'sonata', '2022', 20000.00);

-- sell cars

SELECT sell_car(3, 2, 3, 12000.00, NOW()::timestamp);

SELECT sell_car(3, 1, 4, 11000.00, NOW()::timestamp);

-- cas need work done... oh no ..

SELECT service_car(8000.00, 'engine', 2, 3);

SELECT service_car(20.00, 'N/A (oil change)', 2, 3);

--assign mechanics to tickets

SELECT assign(5, 1, 4, NOW()::timestamp);

SELECT assign(5, 1, 5, NOW()::timestamp);

SELECT assign(1, 2, 5, NOW()::timestamp);




