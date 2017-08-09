CREATE TABLE gym (
  g_id INT(5) AUTO_INCREMENT,
  g_addr VARCHAR(255),
  g_employee_amt INT(5),
  g_maxcapacity INT(3),
  PRIMARY KEY (g_id),
);

CREATE TABLE employees (
  emp_id INT(5) AUTO_INCREMENT,
  emp_fname VARCHAR(255),
  emp_lname VARCHAR(255),
  emp_addr  VARCHAR(255),
  emp_phone char(10),
  emp_ssn char(9),
  emp_dob char(8),
  emp_position varchar(255),
  PRIMARY KEY (emp_id),
  
);

CREATE TABLE customers (
  c_id INT(5) AUTO_INCREMENT,
  c_fname VARCHAR(255),
  c_lname VARCHAR(255),
  c_email VARCHAR(255),
  c_phone CHAR(10),
  PRIMARY KEY (c_id),
  
);

CREATE TABLE membembers (
  m_id INT(5) AUTO_INCREMENT,
  m_sub_period CHAR(8),
  m_fname VARCHAR(255),
  m_lname VARCHAR(255),
  m_dob CHAR(8),
  m_phone CHAR(10),
  m_addr VARCHAR(255)
  emp_id INT(5),
  PRIMARY KEY (m_id),
  FOREIGN KEY (emp_id) REFERENCES employees (emp_id)
);

CREATE TABLE inventory (
  inv_id INT(5) AUTO_INCREMENT,
  inv_machine_amt CHAR(5),
  inv_freeweights_amt CHAR(5),
  student_name VARCHAR(20),
  g_id INT(5),
  PRIMARY KEY (inv_id),
  FOREIGN KEY (g_id) REFERENCES gym (g_id)
);

CREATE TABLE schedules (
  emp_id INT(5),
  sch_date CHAR(8),
  sch_time CHAR(5),
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
  g_id INT(5),
  m_id INT(5),
  att_date CHAR(8),
  att_count INT(255),
  PRIMARY KEY (g_id, m_id),
  FOREIGN KEY (g_id) REFERENCES gym (g_id),
  FOREIGN KEY (m_id) REFERENCES members (m_id)
);

CREATE TABLE retention (
  m_id INT(5),
  discount_id INT(5),
  att_count INT(255),
  PRIMARY KEY (discount_id),
  FOREIGN KEY (m_id) REFERENCES members (m_id)
);

CREATE TABLE accounting (
  acc_transaction_id INT(5) AUTO_INCREMENT,
  acc_membership_price CHAR(6),
  acc_customer_price CHAR(6),
  acc_maintenance_expense CHAR(9),
  PRIMARY KEY (acc_transaction_id)
);

