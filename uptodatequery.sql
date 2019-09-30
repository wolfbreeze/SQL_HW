-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE Titles (
    emp_no varchar(12)   NOT NULL,
    title varchar(50)   NOT NULL,
    from_date varchar(10)   NOT NULL,
    to_date varchar(10)   NOT NULL
);

CREATE TABLE Salaries (
    emp_no varchar(12)   NOT NULL,
    salary money   NOT NULL,
    from_date varchar(10)   NOT NULL,
    to_date varchar(10)   NOT NULL
);

CREATE TABLE Employees (
    emp_no varchar(12)   NOT NULL,
    birth_date varchar(10)   NOT NULL,
    first_name varchar(40)   NOT NULL,
    last_name varchar(40)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date varchar(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Dept_Mgr (
    dept_no varchar(12)   NOT NULL,
    emp_no varchar(12)   NOT NULL,
    from_date varchar(10)   NOT NULL,
    to_date varchar(10)   NOT NULL
);

CREATE TABLE Depart_Emp (
    emp_no varchar(12)   NOT NULL,
    dept_no varchar(12)   NOT NULL,
    from_date varchar(10)   NOT NULL,
    to_date varchar(10)   NOT NULL
);

CREATE TABLE Departments (
    dept_no varchar(12)   NOT NULL,
    dept_name varchar(50)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Mgr ADD CONSTRAINT fk_Dept_Mgr_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Mgr ADD CONSTRAINT fk_Dept_Mgr_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Depart_Emp ADD CONSTRAINT fk_Depart_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Depart_Emp ADD CONSTRAINT fk_Depart_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

select * from Employees
select * from Departments
select * from Salaries
select * from Depart_Emp
select * from Dept_Mgr
select * from Titles
