DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
	employee_id			INTEGER,
	first_name			TEXT,
	last_name			TEXT,
	email 				TEXT,
	country 			TEXT DEFAULT ('Poland'),
	PRIMARY KEY (employee_id)
);

ALTER TABLE employee
ADD COLUMN created_at TEXT CURRENT_DATE; 