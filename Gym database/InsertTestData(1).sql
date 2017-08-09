-- ==================================================== --
-- * Antonio Rios, Alex Thomas
-- * April 28, 2016
-- * CS 345 Databases
-- * Inserting test data to the tables.alter
-- ===================================================== --

USE rtgym;

-- =========================================== --
-- Insert test data to the ACCOUNTING table    --
-- =========================================== --
INSERT INTO accounting 
(acc_transaction_id, acc_membership_price, acc_customer_price, acc_maintenance_expense)
VALUES ( 12340, 10.00, 15.00, 5250.75);


INSERT INTO accounting 
(acc_transaction_id, acc_membership_price, acc_customer_price, acc_maintenance_expense)
VALUES ( 
23410,
10.00,
15.00,
4345.35
);

INSERT INTO accounting 
(acc_transaction_id, acc_membership_price, acc_customer_price, acc_maintenance_expense)
VALUES ( 
34560,
10.00,
15.00,
5443.25

);

-- =========================================== --
-- Insert test data to the GYM table    --
-- =========================================== --
INSERT INTO gym (g_id, g_staddr, g_city, g_state, g_zipcode, g_employee_amt, g_maxcapacity)
VALUES (
42420,
"1234 E Eva St. Flagstaff", 
"Az", 
86001,
15,
150
);

INSERT INTO gym (g_id, g_staddr, g_city, g_state, g_zipcode, g_employee_amt, g_maxcapacity)
VALUES (
42430,
"4321 W Lane Ave.",
"Phoenix",
"Az",
85001,
55,
375

);

INSERT INTO gym (g_id, g_staddr, g_city, g_state, g_zipcode, g_employee_amt, g_maxcapacity)
VALUES (
42450,
"6432 S Rivers St.",
"Phoenix",
"Az",
85004,
60,
385

);

-- =========================================== --
-- Insert test data to the INVENTORY table    --
-- =========================================== --

INSERT INTO inventory (inv_id,g_id, inv_machine_amt, inv_freeweights_amt)
VALUES (
12,
42420,
65,
135
);

INSERT INTO inventory (inv_id,g_id, inv_machine_amt, inv_freeweights_amt)
VALUES (
13,
42430,
125,
255

);

INSERT INTO inventory (inv_id,g_id, inv_machine_amt, inv_freeweights_amt)
VALUES (
14,
42450,
155,
325
);

-- =========================================== --
-- Insert test data to the RETENTION table     --
-- =========================================== --
INSERT INTO retention (discount_id, m_id, att_count)
VALUES(
00001,
65142,
0
);

INSERT INTO retention (discount_id, m_id, att_count)
VALUES(
00001,
66623,
1
);

INSERT INTO retention (discount_id, m_id, att_count)
VALUES(
00001,
34567,
2
);

INSERT INTO retention (discount_id, m_id, att_count)
VALUES(
00001,
45678,
 3
);

-- =========================================== --
-- Insert test data to the MEMBBERS table     --
-- =========================================== --
INSERT INTO members (m_id, m_fname, m_lname, m_dob, m_phone, m_staddr, m_city, m_sate, m_zipcode, emp_id, m_sub_period) 
VALUES (
65142,
"Leonard",
"McCoy",
01-15-1980,
9281233214,
"1010 E Hope St.",
"Flagstaff",
"Az", 
86001,
35680,
06-26-2016,
06-26-2017,
1
);

INSERT INTO members (m_id, m_fname, m_lname, m_dob, m_phone, m_staddr, m_city, m_sate, m_zipcode, emp_id, m_sub_period) 
VALUES (
66623,
"Nyota",
"Uhura",
03-22-1977,
4804353212,
"1234 E San Marcos St.",
"Phoenix",
"Az",
85004,
35700,
10-15-2016,
10-15-2017,
1
);

INSERT INTO members (m_id, m_fname, m_lname, m_dob, m_phone, m_staddr, m_city, m_sate, m_zipcode, emp_id, m_sub_period) 
VALUES (
66321,
"Hikaru",
"Sulu",
12-26-1978,
6026324321,
"5219 N Marvin Ave",
"Phoenix",
"Az",
85025,
35680,
04-23-2015,
04-23-2016,
0

);

-- =========================================== --
-- Insert test data to the CUSTOMERS table     --
-- =========================================== --
INSERT INTO customers (c_id, c_fname, c_lname, c_email, c_phone)
VALUES (
00001,
"Jim",
"Gary",
"Gary@gmail.com",
1234567890
);

INSERT INTO customers (c_id, c_fname, c_lname, c_email, c_phone)
VALUES (
00002,
"Scott",
"Smith",
"Smith@gmail.com",
9285230079
);

INSERT INTO customers (c_id, c_fname, c_lname, c_email, c_phone)
VALUES (
00002,
"Scott",
"Smith",
"Smith@gmail.com",
9285230079
);

INSERT INTO customers (c_id, c_fname, c_lname, c_email, c_phone)
VALUES (
 00003,
 "Thomas",
"Blacksmith",
"blacksmith@gmail.com",
 9287149634
);

-- =========================================== --
-- Insert test data to the EMPLOYEES table     --
-- =========================================== --
INSERT INTO employees (emp_id, emp_fname, emp_lname, emp_staddr, emp_city, emp_state, emp_zipcode, emp_phone, emp_ssn, emp_dob, emp_position)
VALUES (
35680,
"Montgomery",
"Scott",
"2321 E Enterprise Ave.",
"Phoenix",
"Az",
85301,
6022434312,
99942666,
05121975,
"trainer"
);

INSERT INTO employees (emp_id, emp_fname, emp_lname, emp_staddr, emp_city, emp_state, emp_zipcode, emp_phone, emp_ssn, emp_dob, emp_position)
VALUES (
35680,
"Montgomery",
"Scott",
"2321 E Enterprise Ave.",
"Phoenix",
"Az",
85301,
6022434312,
99942666,
05121975,
"trainer"
);

INSERT INTO employees (emp_id, emp_fname, emp_lname, emp_staddr, emp_city, emp_state, emp_zipcode, emp_phone, emp_ssn, emp_dob, emp_position)
VALUES (
35690,
"James",
"Kirk",
"3513 W Vulcan St.",
"Flagstaff",
"Az",
86004,
9283215311,
43223984,
03271986,
receptionist
);

INSERT INTO employees (emp_id, emp_fname, emp_lname, emp_staddr, emp_city, emp_state, emp_zipcode, emp_phone, emp_ssn, emp_dob, emp_position)
VALUES (
35700,
"Pavel",
"Chekov",
"2432 N Sky St.",
"Phoenix",
"Az"
8924,
4806331223,
67866789,
04281999,
"trainer"

);

-- =========================================== --
-- Insert test data to the SCHEDULES table     --
-- =========================================== --
INSERT INTO schedules (emp_id, sch_date, sch_time, sch_hours)
VALUES (
35680,
04-15-2016,
'15:00:00',
8
);


INSERT INTO schedules (emp_id, sch_date, sch_time, sch_hours)
VALUES (
35690,
06-22-2016,
'8:00:00',
10
);

INSERT INTO schedules (emp_id, sch_date, sch_time, sch_hours)
VALUES (
35700,
05-13-2016,
'10:00:00',
8
);

-- =========================================== --
-- Insert test data to the PAYROLL table     --
-- =========================================== --
INSERT INTO payroll (emp_id, p_employee_pay)
VALUES (
35680,
00007.25
);

INSERT INTO payroll (emp_id, p_employee_pay)
VALUES (
35690,
00007.25

);

INSERT INTO payroll (emp_id, p_employee_pay)
VALUES (
35690,
00007.25

);

-- =========================================== --
-- Insert test data to the ATTENDANCE table     --
-- =========================================== --
INSERT INTO attendance (g_id, m_id, att_date, att_count)
VALUES (
 12345,
 35680,
 02-09-2016,
 20
);

INSERT INTO attendance (g_id, m_id, att_date, att_count)
VALUES (
 23456,
 35690,
04-03-2016,
0

);

INSERT INTO attendance (g_id, m_id, att_date, att_count)
VALUES (
34567,
35700,
09-06-2016,
75

);
