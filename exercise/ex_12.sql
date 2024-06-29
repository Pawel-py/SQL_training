DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
	employee_id			INTEGER,
	first_name			TEXT,
	last_name 			TEXT,
	email 				TEXT,
	country 			TEXT DEFAULT ('USA'),
	created_at			TEXT DEFAULT(date('now')),
	PRIMARY KEY (employee_id)
);

INSERT INTO employee (first_name, last_name, email)
VALUES ('John', 'Snow', 'john.snow@esmartdata.org');

SELECT * FROM employee;