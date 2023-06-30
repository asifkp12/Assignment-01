CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

select * from worker;

- q 1. # Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name
<WORKER_NAME>.

- a 1. # select first_name from worker;

- q 2. #Write an SQL query to fetch unique values of DEPARTMENT from the Worker table

- a 2. # select Distinct department from worker;

- Q 3. #Write an SQL query to print the first three characters of FIRST_NAME from the Worker table.

 a 3. # Select substring(first_name,1,3) from worker;

 q 4. #Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and
prints its length.

- a 4. Select  distinct( length(department)),department from worker group by department;

- q 5. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending.

- a 5. Select * from Worker order by first_name asc,department desc;

- q 6. # Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.

- a 6. # select * from worker where department ="admin";

-q 7. # Write an SQL query to print details of the Workers whose SALARY lies between 100000 and
500000.

- a 7. # select * from worker where salary between 100000 and 500000;

- q.8. # Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

- a 8. SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary FROM worker WHERE
 WORKER_ID IN (SELECT WORKER_ID FROM worker WHERE Salary BETWEEN 50000 AND 100000)

- q 9. # write an SQL query to show only even rows from the WORKER table.

- a 9. # Select * from worker where worker_ID % 2 = 0;
 
- q 10. write an SQL query to print details of the Workers who joined in Feb’2014.

select * from worker;

- a 10. Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

--#End_of_assignment_one#