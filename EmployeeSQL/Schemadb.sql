CREATE TABLE TITLES (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);


CREATE TABLE Employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES TITLES(title_id)
	);
	


CREATE TABLE Salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));


CREATE TABLE Departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(30));



CREATE TABLE Dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	PRIMARY KEY(dept_no,emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE Dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no)
);

