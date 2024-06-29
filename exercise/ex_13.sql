DROP TABLE IF EXISTS employee;

CREATE TABLE employee(
	employee_id 		INTEGER,
	first_name			TEXT,
	last_name			TEXT,
	email 				TEXT,
	created_at			TEXT DEFAULT (DATE('now')),
	PRIMARY KEY (employee_id)
);