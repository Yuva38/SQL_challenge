create table employees(
	emp_no  int  NOT NULL,
	birth_date Date NOT NULL,
	first_name Varchar(20) NOT NULL,
	last_name Varchar(20) NOT NULL,
	gender Varchar(1) NOT NULL,
	hire_date Date NOT NULL,
	PRIMARY KEY(emp_no)
);

create table departments(
	dept_no  Varchar(10) PRIMARY KEY NOT NULL,
	dept_name Varchar(40) UNIQUE
);

create table dept_managers(
	dept_no Varchar(10) NOT NULL,
	emp_no Int 			Not NULL,
	from_date Date		Not NULL,	
	to_date Date		Not NULL,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no),
	PRIMARY KEY(dept_no, emp_no)
);

create table dept_employee(
	emp_no  Int Not null,
	dept_no  Varchar(10) Not null, 
	from_date Date Not null, 
	to_date Date Not null,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no),
	PRIMARY KEY(dept_no, emp_no)
);

create table titles(
	emp_no Int not null,
	title Varchar(25) not null,
	from_date Date not null,
	to_date Date,
	FOREIGN KEY (emp_no) references employees(emp_no),
	PRIMARY KEY(emp_no, title,from_date)
);

create table salaries(
	emp_no Int not null,
	salary INT not null,
	from_date DATE not null, 
	to_date DATE not null,
	FOREIGN KEY (emp_no) references employees(emp_no),
	primary key(emp_no,from_date)
);