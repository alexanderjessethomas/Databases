-- ==================================================== --
-- * Antonio Rios, Alex Thomas
-- * April 24, 2016
-- * CS 345 Databases
-- * Creates the RTGYM database and the tables in alter
-- * the database
-- ===================================================== --


CREATE database RTGYM;

USE RTGYM;

CREATE TABLE gym (
  g_id INT(5) AUTO_INCREMENT,
  g_staddr VARCHAR(255),
  g_city VARCHAR(255),
  g_state VARCHAR(255),
  g_zipcode INT(5),
  g_employee_amt INT(5),
  g_maxcapacity INT(3),
  PRIMARY KEY (g_id)
);

CREATE TABLE employees (
  emp_id INT(5) AUTO_INCREMENT,
  emp_fname VARCHAR(255),
  emp_lname VARCHAR(255),
  emp_staddr  VARCHAR(255),
  emp_city VARCHAR(255),
  emp_state VARCHAR(255),
  emp_zipcode INT(5),
  emp_phone char(10),
  emp_ssn char(9),
  emp_dob char(8),
  emp_position varchar(255),
  PRIMARY KEY (emp_id)
  
);

CREATE TABLE customers (
  c_id INT(5) AUTO_INCREMENT,
  c_fname VARCHAR(255),
  c_lname VARCHAR(255),
  c_email VARCHAR(255),
  c_phone CHAR(10),
  PRIMARY KEY (c_id)
  
);

CREATE TABLE members (
  m_id INT(5) AUTO_INCREMENT,
  m_start_date date,
  m_end_date date,
  m_status boolean,
  m_fname VARCHAR(255),
  m_lname VARCHAR(255),
  m_dob date,
  m_phone CHAR(10),
  m_staddr VARCHAR(255),
  m_city VARCHAR(255),
  m_state VARCHAR(255),
  m_zipcode INT(5),
  emp_id INT(5),
  PRIMARY KEY (m_id),
  FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);	

CREATE TABLE inventory (
  inv_id INT(5) AUTO_INCREMENT,
  g_id INT(5),
  inv_machine_amt CHAR(5),
  inv_freeweights_amt CHAR(5),
  PRIMARY KEY (inv_id),
  FOREIGN KEY (g_id) REFERENCES gym (g_id)
);

CREATE TABLE schedules (
  emp_id INT(5),
  sch_date date,
  sch_time time,
  sch_hours INT(2),
  PRIMARY KEY (emp_id, sch_date),
  FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);

CREATE TABLE payroll (
  emp_id INT(5),
  p_employee_pay INT(10),

  PRIMARY KEY (emp_id, p_employee_pay),
  FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);


CREATE TABLE attendance (
  g_id INT(5) AUTO_INCREMENT,
  m_id INT(5),
  att_date date,
  att_count INT(255),
  PRIMARY KEY (g_id, m_id),
  FOREIGN KEY (g_id) REFERENCES gym (g_id),
  FOREIGN KEY (m_id) REFERENCES members(m_id)
);

CREATE TABLE retention (
  m_id INT(5),
  discount_id INT(5),
  att_count INT(255),
  PRIMARY KEY (discount_id),
  FOREIGN KEY (m_id) REFERENCES members(m_id)
);

CREATE TABLE accounting (
  acc_transaction_id INT(5) AUTO_INCREMENT,
  acc_membership_price CHAR(6),
  acc_customer_price CHAR(6),
  acc_maintenance_expense CHAR(9),
  PRIMARY KEY (acc_transaction_id)
);