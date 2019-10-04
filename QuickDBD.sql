-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/sxJRAY
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Title] (
    [emp_no] varchar(45)  NOT NULL ,
    [title] varchar(45)  NOT NULL ,
    [from_date] varchar(12)  NOT NULL ,
    [to_date] varchar(12)  NOT NULL 
)

CREATE TABLE [Salaries] (
    [emp_no] varchar(45)  NOT NULL ,
    [salary] money(45)  NOT NULL ,
    [from_date] varchar(12)  NOT NULL ,
    [to_date] varchar(12)  NOT NULL 
)

CREATE TABLE [Employees] (
    [emp_no] varchar(45)  NOT NULL ,
    [birthdate] varchar(12)  NOT NULL ,
    [first_name] varchar(45)  NOT NULL ,
    [last_name] varchar(45)  NOT NULL ,
    [gender] varchar(2)  NOT NULL ,
    [hire_date] varchar(12)  NOT NULL ,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [Dept_Mangr] (
    [dept_no] varchar(45)  NOT NULL ,
    [emp_no] varchar(45)  NOT NULL ,
    [from_date] varchar(12)  NOT NULL ,
    [to_date] varchar(12)  NOT NULL 
)

CREATE TABLE [Dept_Emp] (
    [emp_no] varchar(45)  NOT NULL ,
    [dept_no] varchar(45)  NOT NULL ,
    [from_date] varchar(12)  NOT NULL ,
    [to_date] varchar(12)  NOT NULL 
)

CREATE TABLE [Departments] (
    [dept_no] varchar(45)  NOT NULL ,
    [dept_name] varchar(45)  NOT NULL 
)

ALTER TABLE [Salaries] WITH CHECK ADD CONSTRAINT [FK_Salaries_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Salaries] CHECK CONSTRAINT [FK_Salaries_emp_no]

ALTER TABLE [Employees] WITH CHECK ADD CONSTRAINT [FK_Employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Title] ([emp_no])

ALTER TABLE [Employees] CHECK CONSTRAINT [FK_Employees_emp_no]

ALTER TABLE [Dept_Mangr] WITH CHECK ADD CONSTRAINT [FK_Dept_Mangr_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_Mangr] CHECK CONSTRAINT [FK_Dept_Mangr_dept_no]

ALTER TABLE [Dept_Mangr] WITH CHECK ADD CONSTRAINT [FK_Dept_Mangr_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_Mangr] CHECK CONSTRAINT [FK_Dept_Mangr_emp_no]

ALTER TABLE [Dept_Emp] WITH CHECK ADD CONSTRAINT [FK_Dept_Emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [Employees] ([emp_no])

ALTER TABLE [Dept_Emp] CHECK CONSTRAINT [FK_Dept_Emp_emp_no]

ALTER TABLE [Dept_Emp] WITH CHECK ADD CONSTRAINT [FK_Dept_Emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [Departments] ([dept_no])

ALTER TABLE [Dept_Emp] CHECK CONSTRAINT [FK_Dept_Emp_dept_no]

COMMIT TRANSACTION QUICKDBD