
CREATE TABLE DEPOSIT (
    ACTNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8,2),
    ADATE DATETIME
);
select * from DEPOSIT

-- 4. Create the BRANCH table
CREATE TABLE BRANCH (
    BNAME VARCHAR(50),
    CITY VARCHAR(50)
);

-- 5. Create the CUSTOMERS table
CREATE TABLE CUSTOMERS (
    CNAME VARCHAR(50),
    CITY VARCHAR(50)
);

-- 6. Create the BORROW table
CREATE TABLE BORROW (
    LOANNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8,2)
);

-- 7. Insert data into DEPOSIT table
INSERT INTO DEPOSIT VALUES (101, 'ANIL', 'VRCE', 1000.00, '1995-03-01');
INSERT INTO DEPOSIT VALUES (102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04');
INSERT INTO DEPOSIT VALUES (103, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17');
INSERT INTO DEPOSIT VALUES (104, 'MADHURI', 'CHANDI', 1200.00, '1995-12-17');
INSERT INTO DEPOSIT VALUES (105, 'PRAMOD', 'M.G. ROAD', 3000.00, '1996-03-27');
INSERT INTO DEPOSIT VALUES (106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31');
INSERT INTO DEPOSIT VALUES (107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05');
INSERT INTO DEPOSIT VALUES (108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02');
INSERT INTO DEPOSIT VALUES (109, 'MINU', 'POWAI', 7000.00, '1995-08-10');

-- 8. Insert data into BRANCH table
INSERT INTO BRANCH VALUES ('VRCE', 'NAGPUR');
INSERT INTO BRANCH VALUES ('AJNI', 'NAGPUR');
INSERT INTO BRANCH VALUES ('KAROLBAGH', 'DELHI');
INSERT INTO BRANCH VALUES ('CHANDI', 'DELHI');
INSERT INTO BRANCH VALUES ('DHARAMPETH', 'NAGPUR');
INSERT INTO BRANCH VALUES ('M.G. ROAD', 'BANGLORE');
INSERT INTO BRANCH VALUES ('ANDHERI', 'BOMBAY');
INSERT INTO BRANCH VALUES ('VIRAR', 'BOMBAY');
INSERT INTO BRANCH VALUES ('NEHRU PLACE', 'DELHI');
INSERT INTO BRANCH VALUES ('POWAI', 'BOMBAY');

-- 9. Insert data into CUSTOMERS table
INSERT INTO CUSTOMERS VALUES ('ANIL', 'CALCUTTA');
INSERT INTO CUSTOMERS VALUES ('SUNIL', 'DELHI');
INSERT INTO CUSTOMERS VALUES ('MEHUL', 'BARODA');
INSERT INTO CUSTOMERS VALUES ('MANDAR', 'PATNA');
INSERT INTO CUSTOMERS VALUES ('MADHURI', 'NAGPUR');
INSERT INTO CUSTOMERS VALUES ('PRAMOD', 'NAGPUR');
INSERT INTO CUSTOMERS VALUES ('SANDIP', 'SURAT');
INSERT INTO CUSTOMERS VALUES ('SHIVANI', 'BOMBAY');
INSERT INTO CUSTOMERS VALUES ('KRANTI', 'BOMBAY');
INSERT INTO CUSTOMERS VALUES ('NAREN', 'BOMBAY');

-- 10. Insert data into BORROW table
INSERT INTO BORROW VALUES (201, 'ANIL', 'VRCE', 1000.00);
INSERT INTO BORROW VALUES (206, 'MEHUL', 'AJNI', 5000.00);
INSERT INTO BORROW VALUES (311, 'SUNIL', 'DHARAMPETH', 3000.00);
INSERT INTO BORROW VALUES (321, 'MADHURI', 'ANDHERI', 2000.00);
INSERT INTO BORROW VALUES (375, 'PRAMOD', 'VIRAR', 8000.00);
INSERT INTO BORROW VALUES (481, 'KRANTI', 'NEHRU PLACE', 3000.00);



--1
SELECT * FROM [dbo].DEPOSIT

--2
SELECT * FROM [dbo].BORROW

--3
SELECT * FROM [dbo].CUSTOMERS

--4
INSERT INTO BORROW VALUES(550,'JAY','AJNI',NULL)

--5
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--6
SELECT LOANNO,AMOUNT FROM BORROW

--7
SELECT * FROM BORROW WHERE BNAME='ANDHERI'

--8
SELECT ACTNO,AMOUNT FROM DEPOSIT WHERE ACTNO=106

--9
SELECT CNAME FROM BORROW WHERE AMOUNT>5000

--10
SELECT CNAME FROM DEPOSIT WHERE ADATE='1-DEC-1996'

--11
SELECT CNAME FROM DEPOSIT WHERE ACTNO<105

--12
SELECT CNAME FROM CUSTOMERS ERS WHERE CITY='NAGPUR' OR CITY='DELHI'

SELECT CNAME FROM CUSTOMERS WHERE CITY IN('NAGPUR','DELHI')

--13
SELECT CNAME,BNAME FROM DEPOSIT WHERE AMOUNT>4000 AND ACTNO<105

--14
SELECT * FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000

SELECT * FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000

--15
SELECT * FROM DEPOSIT WHERE BNAME!='ANDHERI'

--16
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT WHERE BNAME IN('AJNI','KAROLBAGH','M.G. ROAD') AND ACTNO<104

--17
SELECT TOP 5 * FROM CUSTOMERS

--18
SELECT TOP 3 * FROM DEPOSIT WHERE AMOUNT>1000

--19
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME!='ANDHERI'

--20
SELECT DISTINCT CITY FROM CUSTOMERS

--21
SELECT DISTINCT BNAME FROM BRANCH

--22
SELECT * FROM CUSTOMERS ORDER BY CITY

--23
SELECT * FROM DEPOSIT  ORDER BY AMOUNT DESC

--24
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000 

--25
UPDATE BORROW SET BNAME='C.G. ROAD' WHERE CNAME='ANIL'

--26
UPDATE DEPOSIT SET ACTNO='111', AMOUNT=5000 WHERE CNAME='SANDIP'

--27	AMOUNT=AMOUNT+(AMOUNT(10/100))
UPDATE BORROW SET AMOUNT=AMOUNT+(AMOUNT*(10/100))

--28
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO BETWEEN 103 AND 107

--29
UPDATE BORROW SET AMOUNT=NULL WHERE LOANNO=321

--30
SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL


SELECT * FROM [dbo].[EMPLOYEE]

--LAB 2  PART A

--1
SELECT EMPNAME FROM EMPLOYEE WHERE SALARY>13000 AND CITY IN('RAJKOT','BARODA')

--2 
SELECT EMPNAME FROM EMPLOYEE ORDER BY EMPNAME

--3
SELECT DISTINCT CITY FROM EMPLOYEE

--4

UPDATE EMPLOYEE SET CITY=NULL WHERE EMPNAME IN('KEYUR','BHOOMI')

--5

SELECT EMPNAME FROM EMPLOYEE WHERE CITY IS NULL

--6
DELETE FROM EMPLOYEE WHERE SALARY>=14000

SELECT * FROM EMPLOYEE
--7

DELETE FROM EMPLOYEE WHERE CITY='RAJKOT'

--8
DELETE FROM EMPLOYEE WHERE JOININGDATE > '1-JAN-2007' 

--9
TRUNCATE TABLE EMPLOYEE 

--10
DROP TABLE EMPLOYEE

--11

TRUNCATE TABLE DEPOSIT

--12
DROP TABLE DEPOSIT

--13
DROP TABLE BRANCH

--14
DROP TABLE CUSTOMERS

--15

DROP TABLE BORROW


-- LAB 2 PART B
SELECT * FROM ACCOUNT
--1
SELECT DISTINCT BNAME FROM ACCOUNT

--2
SELECT CNAME FROM ACCOUNT ORDER BY AMOUNT , CNAME DESC

--3

UPDATE ACCOUNT SET BNAME=NULL WHERE CNAME IN('ANIL','SHIVANI')

SELECT * FROM ACCOUNT

--4
SELECT CNAME FROM ACCOUNT WHERE BNAME IS NULL


--5
DELETE FROM ACCOUNT WHERE AMOUNT>=4000

--6
DELETE FROM ACCOUNT WHERE BNAME='CHANDI'

--7
DELETE FROM ACCOUNT WHERE ADATE > '1-OCT-1995'

--8

TRUNCATE TABLE ACCOUNT

--9
DROP TABLE ACCOUNT

--LAB 2 PART C

-- 1. DISPLAY THE CNAME WHOSE BNAME IS EITHER AJNI OR CHANDI AND AMOUNT IS GREATER THAN 3000
-- AND SORT THE RESULT IN ASCENDING ORDER BY THEIR AMOUNT AND IF AMOUNT IS SAME THEN IN DESCENDING ORDER BY CNAME.
SELECT CNAME
FROM ACCOUNT
WHERE BNAME IN ('AJNI', 'CHANDI') AND AMOUNT > 3000
ORDER BY AMOUNT ASC, CNAME DESC;

-- 2. RETRIEVE TOP 3 UNIQUE BNAME AND SORT THEM IN ASCENDING ORDER ON BNAME.
SELECT DISTINCT TOP 3 BNAME
FROM ACCOUNT
ORDER BY BNAME ASC;

-- 3. DISPLAY THE CNAME WHOSE ACTNO IS GREATER THAN 103 AND SORT THE RESULT IN ASCENDING ORDER BY THEIR AMOUNT
-- AND IF AMOUNT IS SAME THEN IN DESCENDING ORDER BY CNAME.
SELECT CNAME
FROM ACCOUNT
WHERE ACTNO > 103
ORDER BY AMOUNT ASC, CNAME DESC;

-- 4. UPDATE THE BNAME OF ANIL, MEHUL AND SHIVANI TO NULL.
UPDATE ACCOUNT
SET BNAME = NULL
WHERE CNAME IN ('ANIL', 'MEHUL', 'SHIVANI');

-- 5. DISPLAY THE CNAME OF CUSTOMERS WHOSE BNAME IS NULL.
SELECT CNAME
FROM ACCOUNT
WHERE BNAME IS NULL;

-- 6. UPDATE THE AMOUNT OF ANIL TO 5000.
UPDATE ACCOUNT
SET AMOUNT = 5000
WHERE CNAME = 'ANIL';

-- 7. UPDATE AMOUNT OF ACTNO 109 TO NULL.
UPDATE ACCOUNT
SET AMOUNT = NULL
WHERE ACTNO = 109;

-- 8. RETRIEVE ALL THE RECORDS OF ACCOUNT TABLE AS PER THEIR BNAME IN DESCENDING ORDER.
SELECT *
FROM ACCOUNT
ORDER BY BNAME DESC;

-- 9. DELETE ALL THE RECORDS OF ACCOUNT TABLE. (USE TRUNCATE)
TRUNCATE TABLE ACCOUNT;

-- 10. REMOVE ACCOUNT TABLE. (USE DROP)
DROP TABLE ACCOUNT;

--LAB 3 PART A

SELECT * FROM STUDENT

-- 1. DISPLAY THE NAME OF STUDENTS WHOSE NAME STARTS WITH ‘K’.
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE 'K%';

-- 2. DISPLAY THE NAME OF STUDENTS WHOSE NAME CONSISTS OF FIVE CHARACTERS.
SELECT FIRSTNAME
FROM STUDENT
WHERE FIRSTNAME LIKE '_____';

-- 3. RETRIEVE THE FIRST NAME & LAST NAME OF STUDENTS WHOSE CITY NAME ENDS WITH 'A' & CONTAINS SIX CHARACTERS.
SELECT FIRSTNAME, LASTNAME
FROM STUDENT
WHERE CITY LIKE '_____A' ;

-- 4. DISPLAY ALL THE STUDENTS WHOSE LAST NAME ENDS WITH ‘TEL’.
SELECT *
FROM STUDENT
WHERE LASTNAME LIKE '%TEL';

-- 5. DISPLAY ALL THE STUDENTS WHOSE FIRST NAME STARTS WITH ‘HA’ & ENDS WITH ‘T’.
SELECT *
FROM STUDENT
WHERE FIRSTNAME LIKE 'HA%T';

-- 6. DISPLAY ALL THE STUDENTS WHOSE FIRST NAME STARTS WITH ‘K’ AND THIRD CHARACTER IS ‘Y’.
SELECT *
FROM STUDENT
WHERE FIRSTNAME LIKE 'K_Y%';

-- 7. DISPLAY THE NAME OF STUDENTS HAVING NO WEBSITE AND NAME CONSISTS OF FIVE CHARACTERS.
SELECT FIRSTNAME
FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____';

-- 8. DISPLAY ALL THE STUDENTS WHOSE LAST NAME CONSISTS OF ‘JER’.
SELECT *
FROM STUDENT
WHERE LASTNAME LIKE '%JER%';

-- 9. DISPLAY ALL THE STUDENTS WHOSE CITY NAME STARTS WITH EITHER ‘R’ OR ‘B’.
SELECT *
FROM STUDENT
WHERE CITY LIKE 'R%' OR CITY LIKE 'B%';

-- 10. DISPLAY ALL THE NAME OF STUDENTS HAVING WEBSITES.
SELECT FIRSTNAME
FROM STUDENT
WHERE WEBSITE IS NOT NULL;

-- 11. DISPLAY ALL THE STUDENTS WHOSE NAME STARTS FROM ALPHABET A TO H.
SELECT *
FROM STUDENT
WHERE FIRSTNAME LIKE '[A-H]%';

-- 12. DISPLAY ALL THE STUDENTS WHOSE NAME’S SECOND CHARACTER IS VOWEL.
	SELECT *
	FROM STUDENT
	WHERE FIRSTNAME LIKE '_[AEIOU]%';

-- 13. DISPLAY STUDENT’S NAME WHOSE CITY NAME CONSISTS OF ‘ROD’.
SELECT FIRSTNAME
FROM STUDENT
WHERE CITY LIKE '%ROD%';

-- 14. RETRIEVE THE FIRST & LAST NAME OF STUDENTS WHOSE WEBSITE NAME STARTS WITH ‘BI’.
SELECT FIRSTNAME, LASTNAME
FROM STUDENT
WHERE WEBSITE LIKE 'BI%';

-- 15. DISPLAY STUDENT’S CITY WHOSE LAST NAME CONSISTS OF SIX CHARACTERS.
SELECT CITY
FROM STUDENT
WHERE LASTNAME LIKE '______';

-- 16. DISPLAY ALL THE STUDENTS WHOSE CITY NAME CONSISTS OF FIVE CHARACTERS & DOES NOT START WITH ‘BA’.
SELECT *
FROM STUDENT
WHERE CITY LIKE '_____' AND CITY NOT LIKE 'BA%';

-- 17. SHOW ALL THE STUDENTS WHOSE DIVISION STARTS WITH ‘II’.
SELECT *
FROM STUDENT
WHERE DIVISION LIKE 'II%';

-- 18. FIND OUT STUDENT’S FIRST NAME WHOSE DIVISION CONTAINS ‘BC’ ANYWHERE IN DIVISION NAME.
SELECT FIRSTNAME
FROM STUDENT
WHERE DIVISION LIKE '%BC%';

-- 19. SHOW STUDENT ID AND CITY NAME IN WHICH DIVISION CONSISTS OF SIX CHARACTERS AND HAVING WEBSITE NAME.
SELECT STUID, CITY
FROM STUDENT
WHERE DIVISION LIKE '______' AND WEBSITE IS NOT NULL;

-- 20. DISPLAY ALL THE STUDENTS WHOSE NAME’S THIRD CHARACTER IS CONSONANT.
SELECT *
FROM STUDENT
WHERE FIRSTNAME NOT LIKE '__[AEIOU]%';


--LAB 3 PART B

INSERT INTO CUSTOMER (CID, CUSTOMERNAME, CONTACTNAME, ADDRESS, CITY, POSTALCODE, COUNTRY) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitucion 2222', 'Mexico D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taqueria', 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbkop', 'Christina Berglund', 'Berguvsvagen 8', 'Lulea', 'S-958 22', 'Sweden');

SELECT * FROM CUSTOMER 

-- 1. RETURN ALL CUSTOMERS FROM A CITY THAT STARTS WITH 'L' FOLLOWED BY ONE WILDCARD CHARACTER, THEN 'ND' AND THEN TWO WILDCARD CHARACTERS.
SELECT *
FROM CUSTOMER
WHERE CITY LIKE 'L%ND__';

-- 2. RETURN ALL CUSTOMERS FROM A CITY THAT CONTAINS THE LETTER 'L'.
SELECT *
FROM CUSTOMER
WHERE CITY LIKE '%L%';

-- 3. RETURN ALL CUSTOMERS FROM A CITY THAT DOES NOT CONTAIN THE LETTER 'L'.
SELECT *
FROM CUSTOMER
WHERE CITY NOT LIKE '%L%';

-- 4. RETURN ALL CUSTOMERS THAT START WITH 'LA'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE 'LA%';

-- 5. RETURN ALL CUSTOMERS THAT DO NOT START WITH 'LA'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME NOT LIKE 'LA%';

-- 6. RETURN ALL CUSTOMERS THAT START WITH 'A' OR START WITH 'B'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE 'A%' OR CUSTOMERNAME LIKE 'B%';

-- 7. RETURN ALL CUSTOMERS THAT START WITH 'A' OR START WITH 'C' OR START WITH 'T'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE 'A%' OR CUSTOMERNAME LIKE 'C%' OR CUSTOMERNAME LIKE 'T%';

-- 8. RETURN ALL CUSTOMERS THAT START WITH 'A' TO 'D'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE '[A-D]%';

-- 9. RETURN ALL CUSTOMERS THAT END WITH 'A'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE '%A';

-- 10. RETURN ALL CUSTOMERS THAT DO NOT END WITH 'A'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME NOT LIKE '%A';

-- 11. RETURN ALL CUSTOMERS THAT START WITH 'B' AND END WITH 'S'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE 'B%S';

-- 12. RETURN ALL CUSTOMERS THAT CONTAIN THE PHRASE 'OR'.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE '%OR%';

-- 13. RETURN ALL CUSTOMERS THAT START WITH 'A' AND ARE AT LEAST 3 CHARACTERS IN LENGTH.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE 'A%' AND LEN(CUSTOMERNAME) >= 3;

-- 14. RETURN ALL CUSTOMERS THAT HAVE 'R' IN THE SECOND POSITION.
SELECT *
FROM CUSTOMER
WHERE CUSTOMERNAME LIKE '_R%';

-- 15. RETURN ALL CUSTOMERS FROM SPAIN.
SELECT *
FROM CUSTOMER
WHERE COUNTRY = 'Spain';

--LAB 3 PART C

INSERT INTO [dbo].[Table_Customer] (CID, NAME, AGE, ADDRESS, SALARY) VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);

select * from [dbo].[Table_Customer]

-- 1. DISPLAY ALL THE RECORDS FROM THE CUSTOMERS TABLE, WHERE THE SALARY STARTS WITH 200.
SELECT *
FROM Table_Customer
WHERE SALARY LIKE '200%';

-- 2. DISPLAY ALL THE RECORDS FROM THE CUSTOMERS TABLE WITH THE NAME THAT HAS 'AL' IN ANY POSITION.
SELECT *
FROM Table_Customer
WHERE NAME LIKE '%AL%';

-- 3. DISPLAY ALL THE RECORDS FROM THE CUSTOMERS TABLE WHERE THE NAME STARTS WITH 'K' AND IS AT LEAST 4 CHARACTERS IN LENGTH.
SELECT *
FROM Table_Customer
WHERE NAME LIKE 'K____%' ;

-- 4. DISPLAY ALL THE RECORDS FROM THE CUSTOMERS TABLE, WHERE THE NAME HAS 'M' IN THE THIRD POSITION.
SELECT *
FROM Table_Customer
WHERE NAME LIKE '__M%';

-- 5. RETRIEVE THE RECORDS OF THE CUSTOMERS WHOSE NAME STARTS WITH 'C' AND ENDS WITH 'I', OR CUSTOMERS WHOSE NAME ENDS WITH 'K'.
SELECT *
FROM Table_Customer
WHERE NAME LIKE 'C%i' OR NAME LIKE '%K';

-- 6. RETRIEVE ALL THE CUSTOMERS WHOSE NAME DOES NOT START WITH 'K'.
SELECT *
FROM Table_Customer
WHERE NAME NOT LIKE 'K%';


--LAB 4 PART A

select * from employee

--1. Display the Highest, Lowest, Total, and Average salary of all employees. 
--Label the columns Maximum, Minimum, Total_Sal and Average_Sal, respectively.

select max(Salary) [Maximum],min(Salary) [Minium], sum(Salary) [Total_Sal] ,avg(Salary) [Average_Sal]from EMPLOYEE

--2. Find total number of employees of EMPLOYEE table.

SELECT COUNT(*) FROM EMPLOYEE

--3. Give maximum salary from IT department.

SELECT MAX(SALARY) FROM EMPLOYEE WHERE DEPARTMENT ='IT'

--4. Count total number of cities of employee without duplication.

SELECT COUNT(DISTINCT CITY) FROM EMPLOYEE

--5. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(*) 
FROM EMPLOYEE 
GROUP BY CITY

--6. Display city having more than one employee.

SELECT CITY FROM EMPLOYEE
GROUP BY CITY
HAVING COUNT(*)>1

--7. Give total salary of each department of EMPLOYEE table.

SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEE
GROUP BY DEPARTMENT

--8. Give average salary of each department of EMPLOYEE table without displaying the respective department name.

SELECT AVG(SALARY) FROM EMPLOYEE
GROUP BY DEPARTMENT

--9. Give minimum salary of employee who belongs to Ahmedabad.

SELECT MIN(SALARY) FROM EMPLOYEE
WHERE CITY='Ahmedabad'

--10. List the departments having total salaries more than 50000 and located in city Rajkot.

SELECT DEPARTMENT FROM EMPLOYEE 
WHERE CITY='RAJKOT'
GROUP BY DEPARTMENT
HAVING SUM(SALARY)>50000

--11. Count the number of employees living in Rajkot.

SELECT COUNT(*) FROM EMPLOYEE 
WHERE CITY='RAJKOT'

--12. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.

SELECT MAX(SALARY) -MIN(SALARY) FROM EMPLOYEE

--13. Display the total number of employees hired before 1st January, 1991.

SELECT COUNT(*) FROM EMPLOYEE
WHERE JOININGDATE<'1-JAN-1991'

--14. Display total salary of each department with total salary exceeding 35000 and sort the list by total salary.

SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEE 
GROUP BY DEPARTMENT
HAVING SUM(SALARY)>35000
ORDER BY SUM(SALARY) DESC

--15. List out department names in which more than two employees.

SELECT DEPARTMENT FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(*)>2


--LAB 4 PART B 

SELECT * FROM COMPANY

--1. Display the name and total revenue for each company.

SELECT COMPANY,SUM(REVENUE) FROM COMPANY
GROUP BY COMPANY

--2. Generate a report with the production year and the number of games released this year (named count), 
--the average of production cost for all games produced in this year (named avg_cost) and the average revenue for that year (named avg_revenue).

SELECT PRODUCTION_YEAR,COUNT(*) [COUNT],AVG(PRODUCTION_COST) [AVG_COST],AVG(REVENUE) [AVG_REVENUE] FROM COMPANY 
GROUP BY PRODUCTION_YEAR

--3. Count how many games of a given type are profitable (i.e. the revenue was greater than the production cost). 
--Show the game type and the number of profitable games (named number_of_games) for each type.

SELECT TYPE, COUNT(*) [number_of_games] FROM COMPANY 
WHERE REVENUE > PRODUCTION_COST
GROUP BY TYPE

--4. Obtain the type of games and the total revenue generated for games with a production_year after 2010 and with a PS2 or PS3 system. 
--Order the result so the types with the highest revenue come first.

SELECT TYPE,SUM(REVENUE) FROM COMPANY WHERE Production_year> 2010 AND System IN ('PS2','PS3') 
GROUP BY TYPE
ORDER BY SUM(REVENUE) DESC

SELECT * FROM COMPANY
--5. For all companies present in the table, obtain their names and the sum of gross profit over all years. 
--(Assume that gross profit = revenue - cost of production). Name this column gross_profit_sum. 
--Order the results by gross profit, in descending order.

SELECT COMPANY,SUM(REVENUE- Production_cost) [GROSS_PROFIT_SUM] FROM COMPANY
GROUP BY COMPANY
ORDER BY GROSS_PROFIT_SUM DESC

--6. Obtain the yearly gross profit of each company. In other words, we want a report with the company name, 
--the year, and the gross profit for that year. Order the report by company name and year.

SELECT COMPANY,Production_year,SUM(REVENUE- Production_cost) FROM COMPANY
GROUP BY COMPANY,Production_year
ORDER BY COMPANY,Production_year

SELECT * FROM COMPANY
--7. For each company, select its name, the number of games it’s produced (as the number_of_games column), 
--and the average cost of production (as the avg_cost column). Show only companies producing more than one game.

SELECT COMPANY,COUNT(*),AVG(PRODUCTION_COST) [avg_cost] FROM COMPANY
GROUP BY COMPANY
HAVING COUNT(*)>1

SELECT * FROM ORDERS

SELECT * FROM salesman

SELECT * FROM CUSTOMER

--LAB 5 PART A
--1. Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.

SELECT SUM(PURCH_AMT) FROM ORDERS

--2. Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount.

SELECT AVG(PURCH_AMT) FROM ORDERS

--3. Write a SQL query that counts the number of unique salespeople. Return number of salespeople.

SELECT COUNT(DISTINCT SALESMAN_ID) FROM SALESMAN 

--4. Write a SQL query to count the number of customers. Return number of customers.

SELECT COUNT(*) FROM SALESMAN 

--5. Write a SQL query to determine the number of customers who received at least one grade for their activity.

SELECT COUNT(*) FROM CUSTOMER WHERE GRADE IS NOT NULL

--6. Write a SQL query to find the maximum purchase amount.

SELECT MAX(PURCH_AMT) FROM ORDERS 

--7. Write a SQL query to find the minimum purchase amount.

SELECT MIN(PURCH_AMT) FROM ORDERS 

--8. Write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade.

SELECT CITY,MAX(GRADE) FROM CUSTOMER 
GROUP BY CITY

SELECT * FROM ORDERS
--9. Write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount.

SELECT CUSTOMER_ID,MAX(PURCH_AMT) FROM ORDERS
GROUP BY CUSTOMER_ID

--10. Write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
--Return, order date and highest purchase amount.

SELECT  CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) FROM ORDERS
GROUP BY CUSTOMER_ID,ORD_DATE


SELECT * FROM ORDERS

SELECT * FROM salesman

SELECT * FROM CUSTOMER


--LAB 5 PART B
--1. Write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. 
--Return salesperson ID, purchase amount.

SELECT SALESMAN_ID,MAX(PURCH_AMT) FROM ORDERS WHERE ORD_DATE='17-AUG-2012'
GROUP BY salesman_id

--2. Write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. 
--Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount.

SELECT CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) FROM ORDERS
GROUP BY CUSTOMER_ID,ORD_DATE

--3. Write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) 
--by combination of each customer and order date. Return customer id, order date and maximum purchase amount.

SELECT CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) FROM ORDERS
WHERE purch_amt BETWEEN 2000 AND 6000
GROUP BY CUSTOMER_ID,ORD_DATE
 
 SELECT * FROM ORDERS

SELECT * FROM salesman

SELECT * FROM CUSTOMER
--4. Write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. 
--Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. 
--Return customer id, order date and maximum purchase amount.

SELECT CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) FROM ORDERS
GROUP BY CUSTOMER_ID,ORD_DATE
HAVING MAX(PURCH_AMT) IN (2000,3000,5760,6000)

--5. Write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 
--3007(Begin and end values are included.). Return customer id and maximum purchase amount.

SELECT CUSTOMER_ID,MAX(PURCH_AMT) FROM ORDERS
WHERE customer_id BETWEEN 3002 AND 3007
GROUP BY CUSTOMER_ID

--6. Write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 
--3007(Begin and end values are included.). Filter the rows for maximum order (purchase) amount is higher than 1000. 
--Return customer id and maximum purchase amount.

SELECT CUSTOMER_ID,MAX(PURCH_AMT) FROM ORDERS
WHERE CUSTOMER_ID BETWEEN 3002 AND 3007
GROUP BY CUSTOMER_ID
HAVING MAX(PURCH_AMT) > 1000

--7. Write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. Filter the rows for 
--the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). 
--Return salesperson id and maximum purchase amount.

SELECT SALESMAN_ID,MAX(PURCH_AMT) FROM ORDERS 
--WHERE salesman_id BETWEEN 5003 AND 5007
GROUP BY salesman_id
HAVING salesman_id BETWEEN 5003 AND 5007

--8. Write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.

SELECT COUNT(*) FROM ORDERS 
WHERE ord_date='17-AUG-2012'

--9. Write a SQL query to count the number of salespeople in a city. Return number of salespeople.

SELECT * FROM ORDERS
SELECT * FROM SALESMAN
SELECT * FROM CUSTOMER

SELECT COUNT(SALESMAN_ID) FROM SALESMAN 
GROUP BY CITY

--10. Write a SQL query to count the number of orders based on the combination of each order date and salesperson. 
--Return order date, salesperson id.

SELECT ORD_DATE,SALESMAN_ID FROM ORDERS
GROUP BY ORD_DATE,SALESMAN_ID

select * from student
select * from result
select * from EMPLOYEE


----LAB 6 PART A
--1. Combine information from student and result table using cross join or Cartesian product.

SELECT * FROM STUDENT CROSS JOIN RESULT

--2. Display Rno, Name, Branch and SPI of all students.

SELECT s.RNO,s.NAME,s.BRANCH,r.SPI FROM STUDENT s 
INNER JOIN RESULT r ON s.Rno=r.Rno

--3. Display Rno, Name, Branch and SPI of CE branch’s student only.

SELECT s.RNO,S.NAME,S.BRANCH,R.SPI FROM STUDENT S
INNER JOIN RESULT R ON S.RNO=R.RNO 
WHERE S.BRANCH='CE'

--4. Display Rno, Name, Branch and SPI of other than EC branch’s student only.

SELECT s.RNO,S.NAME,S.BRANCH,R.SPI FROM STUDENT S
INNER JOIN RESULT R ON S.RNO=R.RNO 
WHERE S.BRANCH!='EC'

--5. Display average result of each branch.
 
 SELECT S.BRANCH,AVG(R.SPI) FROM STUDENT S
 INNER JOIN RESULT R ON S.RNO=R.RNO 
 GROUP BY S.BRANCH

--6. Display average result of each branch and sort them in ascending order by SPI.

SELECT S.BRANCH,AVG(R.SPI) FROM STUDENT S
 INNER JOIN RESULT R ON S.RNO=R.RNO 
 GROUP BY S.BRANCH
 ORDER BY AVG(R.SPI) ASC

--7. Display average result of CE and ME branch.

 SELECT S.BRANCH,AVG(R.SPI) FROM STUDENT S
 INNER JOIN RESULT R ON S.RNO=R.RNO 
 WHERE BRANCH IN('CE','ME')
 GROUP BY S.BRANCH

--8. Perform the left outer join on Student and Result tables.
select * from student
select * from result
select * from EMPLOYEE

SELECT * FROM STUDENT S
LEFT JOIN RESULT R ON S.RNO=R.RNO

--9. Perform the right outer join on Student and Result tables.

SELECT * FROM STUDENT S
RIGHT JOIN RESULT R ON S.RNO=R.RNO

--10. Perform the full outer join on Student and Result tables.

SELECT * FROM STUDENT S
FULL OUTER JOIN RESULT R ON S.RNO=R.RNO

--11. Retrieve the names of employee along with their manager name from the Employee table.

SELECT E1.NAME,E2.MANAGERNO FROM EMPLOYEE E1
LEFT JOIN EMPLOYEE E2 ON E1.EMPLOYEENO=E2.MANAGERNO

select * from person
select * from DEPARTMENT


--LAB 6 PART-B

--1. Find all persons with their department name & code.

SELECT P.PERSONNAME,D.DEPARTMENTNAME,D.DEPARTMENTCODE FROM PERSON P
LEFT JOIN DEPARTMENT D ON P.DepartmentID=D.DepartmentID

--2. Give department wise maximum & minimum salary with department name.

SELECT D.DEPARTMENTNAME,MAX(P.SALARY) ['MAXIMUM SALARY'],
MIN(P.SALARY) ['MINIUM SALARY'] FROM DEPARTMENT D INNER JOIN PERSON P
ON D.DEPARTMENTID=P.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME

--3. Find all departments whose total salary is exceeding 100000.

SELECT D.DEPARTMENTNAME,SUM(P.SALARY) ['TOTAL SALARY']
FROM DEPARTMENT D INNER JOIN PERSON P 
ON D.DEPARTMENTID=P.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING SUM(P.SALARY)>100000

--4. Retrieve person name, salary & department name who belongs to Jamnagar city.

SELECT P.PERSONNAME,P.SALARY,D.DEPARTMENTNAME FROM PERSON P
INNER JOIN DEPARTMENT D ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.CITY='JAMNAGAR'

--5. Find all persons who does not belongs to any department.
select * from person
select * from DEPARTMENT
--6. Find department wise person counts.

SELECT D.DepartmentName,COUNT(P.PERSONID) FROM  DEPARTMENT D 
INNER JOIN PERSON P ON D.DEPARTMENTID=P.DEPARTMENTID

--7. Find average salary of person who belongs to Ahmedabad city.

SELECT AVG(SALARY) FROM PERSON 
WHERE CITY='AHMEDABAD'

--8. Produce Output Like: <PersonName> earns <Salary> from department <DepartmentName> monthly. (In Single Column)

SELECT CONCAT(PERSONNAME,' EARNS ',SALARY,' FROM DEPARTMENT ',DEPARTMENTID,' MONTHLY') FROM PERSON

--9. List all departments who have no persons.

SELECT D.DEPARTMENTNAME FROM DEPARTMENT D 
INNER JOIN PERSON P ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.PersonID IS NULL

--10. Find city & department wise total, average & maximum salaries.

SELECT P.CITY,D.DEPARTMENTNAME,SUM(P.SALARY) ['TOTAL SALARY'] ,AVG(P.SALARY) ['AVG SALARY'] ,MAX(P.SALARY) ['MAX SALARY'] FROM PERSON P 
INNER JOIN DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID 
GROUP BY P.CITY,D.DEPARTMENTNAME

--LAB 6 PART C
--1. Display Unique city names.
SELECT * FROM PERSON
SELECT * FROM DEPARTMENT

SELECT DISTINCT CITY FROM PERSON

--2. List out department names in which more than two persons.

SELECT D.DepartmentName FROM DEPARTMENT D
INNER JOIN PERSON P ON D.DEPARTMENTID=P.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING COUNT(P.PERSONID)>2

--3. Combine person name’s first three characters with city name’s last three characters in single column.

SELECT CONCAT(LEFT(PERSONNAME,3),RIGHT(CITY,3)) FROM PERSON

--4. Give 10% increment in Computer department employee’s salary.

UPDATE PERSON SET Salary=Salary*1.10
WHERE DepartmentID=(SELECT DepartmentID FROM DEPARTMENT WHERE DepartmentName='COMPUTER')

--5. Display all the person name’s who’s joining dates difference with current date is more than 365 days.

SELECT PERSONNAME FROM PERSON WHERE DATEDIFF(day,GETDATE(), joiningdate) >365

--LAB 7 PART A 

CREATE DATABASE lab7

SELECT * FROM DEPARTMENT
SELECT * FROM PERSON

--LAB 7 PART B
--1. Find all persons with their department name & code.

SELECT P.PERSONNAME,D.DEPARTMENTNAME,D.DEPARTMENTCODE FROM PERSON P
LEFT JOIN DEPARTMENT D ON P.DepartmentID=D.DepartmentID

--2. Find the person's name whose department is located in C-Block.

SELECT P.PersonName FROM PERSON P INNER JOIN DEPARTMENT D ON P.DepartmentID=D.DepartmentID
WHERE LOCATION='C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.

SELECT P.PERSONNAME,P.SALARY,D.DEPARTMENTNAME FROM PERSON P
INNER JOIN DEPARTMENT D ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.CITY='JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.

SELECT P.PERSONNAME,P.SALARY,D.DEPARTMENTNAME FROM PERSON P
INNER JOIN DEPARTMENT D ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.CITY!='RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.

SELECT P.PERSONNAME FROM PERSON P INNER JOIN 
DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID
WHERE D.DepartmentName='CIVIL' AND JoiningDate>'1-AUG-2001'

--6. Find details of all persons who belong to the Computer department.

SELECT P.PERSON_ID,P.PersonName,P.DepartmentID,P.Salary,P.JoiningDate,P.CITY FROM PERSON P LEFT JOIN DEPARTMENT D 
ON P.DEPARTMENTID=D.DEPARTMENTID 
WHERE D.DepartmentName='COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.

SELECT P.PERSONNAME,D.DEPARTMENTNAME FROM PERSON P INNER JOIN 
DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID
WHERE DATEDIFF(D,JoiningDate,GETDATE())>365

--8. Find department wise person counts.

SELECT D.DEPARTMENTNAME,COUNT(P.PERSON_ID) FROM DEPARTMENT D INNER JOIN 
PERSON P ON P.DEPARTMENTID=D.DEPARTMENTID
GROUP BY D.DepartmentName

--9. Give department wise maximum & minimum salary with department name.

SELECT D.DEPARTMENTNAME,MAX(P.SALARY) ['MAXIMUM SALARY'],
MIN(P.SALARY) ['MINIUM SALARY'] FROM DEPARTMENT D INNER JOIN PERSON P
ON D.DEPARTMENTID=P.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME

--10. Find city wise total, average, maximum and minimum salary.

SELECT CITY,SUM(SALARY) ['TOTAL SALARY'],MAX(SALARY) ['MAX SALARY'],MIN(SALARY) ['MIN SALARY'] FROM PERSON
GROUP BY CITY

--11. Find the average salary of a person who belongs to Ahmedabad city.

SELECT CITY,AVG(SALARY) FROM PERSON 
WHERE CITY='Ahmedabad'
GROUP BY CITY

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)

SELECT CONCAT(P.PersonName,' LIVES IN',P.CITY,' AND WORKS IN ', D.DEPARTMENTNAME,' DEPARTMENT') FROM PERSON P
INNER JOIN DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID

--13. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)

SELECT CONCAT(P.PersonName,' EARNS ',P.Salary,' FROM ', D.DEPARTMENTNAME,' DEPARTMENT MONTHLY') FROM PERSON P
INNER JOIN DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID

--14. Find city & department wise total, average & maximum salaries.

SELECT P.CITY,D.DEPARTMENTNAME,SUM(P.SALARY) ['TOTAL SALARY'] ,AVG(P.SALARY) ['AVG SALARY'] ,MAX(P.SALARY) ['MAX SALARY'] FROM PERSON P 
INNER JOIN DEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID 
GROUP BY P.CITY,D.DEPARTMENTNAME

--15. Find all persons who do not belong to any department.

SELECT D.DEPARTMENTNAME FROM DEPARTMENT D 
INNER JOIN PERSON P ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.Person_ID IS NULL

SELECT * FROM DEPARTMENT
SELECT * FROM PERSON

--LAB 7 PART C
--1. Find all departments whose total salary is exceeding 100000.

SELECT D.DEPARTMENTNAME,SUM(P.SALARY) ['TOTAL SALARY']
FROM DEPARTMENT D INNER JOIN PERSON P 
ON D.DEPARTMENTID=P.DEPARTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING SUM(P.SALARY)>100000


--2. List all departments who have no person.

SELECT D.DEPARTMENTNAME FROM DEPARTMENT D 
INNER JOIN PERSON P ON D.DEPARTMENTID=P.DEPARTMENTID
WHERE P.Person_ID IS NULL

--3. List out department names in which more than two persons are working.

SELECT D.DEPARTMENTNAME,COUNT(P.PERSON_ID) FROM DEPARTMENT D
INNER JOIN PERSON P ON D.DepartmentID=P.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(P.Person_ID)>2

--4. Give a 10% increment in the Computer department employee’s salary. (Use Update)

UPADATE PERSON SET SALARY=SALARY + SALARY * 0.1
WHERE DEPARTMENTID=(SELECT DEPARTMENTID FROM PERSON WHERE DEPARTMENTNAME='COMPUTER')

--5. Calculate Employee Experience in Years, Months & Days with respect to their joining Date.

select personname,DATEDIFF(YEAR,JOININGDATE,GETDATE()) from PERSON

--LAB 8 PART A
SELECT * FROM CUSTOMER
select * from orders
SELECT * FROM SALESMAN
--1. Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

select S.NAME,C.CUST_NAME,S.CITY FROM SALESMAN S
CROSS JOIN CUSTOMER C WHERE S.CITY=C.CITY

--2. Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

SELECT O.ORD_NO,O.PURCH_AMT,C.CUST_NAME,C.CITY FROM ORDERS O
INNER JOIN CUSTOMER C ON O.customer_id=C.CUSTOMER_ID
WHERE purch_amt BETWEEN 500 AND 2000

--3. Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

SELECT C.CUST_NAME,C.CITY,S.NAME,S.COMMISSION FROM CUSTOMER C
INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID 

--4. Write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
--Return Customer Name, customer city, Salesman, commission.

SELECT C.CUST_NAME,C.CITY,S.NAME,S.COMMISSION FROM CUSTOMER C 
INNER JOIN SALESMAN S ON C.SALESMAN_ID=S.SALESMAN_ID 
WHERE S.COMMISSION>0.12

--5. Write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received 
--a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.

select c.cust_name,c.city,s.name,s.city,s.commission from customer c
inner join salesman s on  C.SALESMAN_ID=S.SALESMAN_ID
where c.city!=s.city and S.COMMISSION>0.12


SELECT * FROM CUSTOMER
select * from orders
SELECT * FROM SALESMAN
--6. Write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.

select o.ord_no,o.orddate,o.purch_amt,c.cust_name,c.grade,s.name,s.commission from orders o
inner join customer c on o.customer_id=c.customer_id 
inner join salesman s on c.salesman_id=s.salesman_id

--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table 
--appears once and only the relational rows are returned.

select s.salesman_id,s.name,s.city,s.commission,c.customer_id,c.cust_name,
c.grade,o.ord_no,o.purch_amt,o.orddate from salesman s 
inner join customer c on s.salesman_id=c.salesman_id
inner join orders o on s.salesman_id=o.salesman_id

--8. Write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be 
--sorted by ascending customer_id.

select c.cust_name,c.city,c.grade,c.customer_id,s.name,s.city from customer c
inner join salesman s on c.salesman_id=s.salesman_id 
order by customer_id asc

--9. Write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, 
--salesmancity. The result should be ordered by ascending customer_id.

select c.cust_name,c.city,c.grade,c.customer_id,s.name,s.city from customer c
inner join salesman s on c.salesman_id=s.salesman_id 
where c.grade<300

--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order 
--amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.

select c.cust_name,c.city,o.ord_no,o.orddate,o.purch_amt from customer c
inner join orders o on c.customer_id=o.customer_id
order by orddate

-- lab 8 Part-B:

--1. Write a SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, 
--and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman 
--or by themselves.

select c.cust_name,c.city,o.ord_no,o.orddate,o.purch_amt,s.name,s.commission from customer c
inner join orders o on c.customer_id=o.customer_id
inner join salesman s on c.salesman_id=s.salesman_id
where c.customer_id=o.customer_id

--2. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or 
--have not yet joined any of the customers.

select s.name from SALESMAN s
inner join customer c on s.salesman_id=c.salesman_id
order by s.name

SELECT * FROM CUSTOMER
select * from orders
SELECT * FROM SALESMAN


--3. Write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

select s.name,c.cust_name,c.city,c.grade,o.ord_no,o.orddate,o.purch_amt from SALESMAN s
inner join CUSTOMER c on s.salesman_id=c.salesman_id 
inner join ORDERS o on c.customer_id=o.customer_id

--4. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. 
--The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed 
--any order to the associated supplier.

select s.salesman_id, s.name, s.city, c.cust_name, c.grade from salesman s
inner join customer c on s.salesman_id = c.salesman_id
inner join orders o on c.customer_id = o.customer_id
where (o.purch_amt >= 2000 AND c.grade IS NOT NULL)
OR c.customer_id IS NULL;


--5. For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on 
--the list, create a report containing the customer name, city, order number, order date, and purchase amount.

select  c.cust_name, c.city, o.ord_no, o.orddate, o.purch_amt from customer c
inner join orders o on c.customer_id = o.customer_id
WHERE c.cust_name is not null

--6. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers 
--on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the 
--list nor has a grade.

select  c.cust_name, c.city, o.ord_no, o.orddate, o.purch_amt from customer c
inner joinorders o ON c.customer_id = o.customer_id
WHERE c.grade IS NOT NUL

--7. Write a SQL query to combine each row of the salesman table with each row of the customer table.

SELECT S.name, S.city, C.cust_name, C.city
FROM SALESMAN S
CROSS JOIN CUSTOMER C;

--8. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all 
--customers and vice versa for that salesperson who belongs to that city.

SELECT S.name, S.city, C.cust_name, C.city
FROM SALESMAN S
CROSS JOIN CUSTOMER C
WHERE S.city=C.city;

--9. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every 
--customer and vice versa for those salesmen who belong to a city and customers who require a grade.

SELECT S.name, S.city, C.cust_name, C.city, C.Grade
FROM SALESMAN S
CROSS JOIN CUSTOMER C
WHERE S.city IS NOT NULL AND C.Grade IS NOT NULL

--10. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and 
--vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.

SELECT S.name, S.city, C.cust_name, C.city, C.Grade
FROM SALESMAN S
CROSS JOIN CUSTOMER C
WHERE S.city != C.city AND C.Grade IS NOT NULL;

--lab 9 part a
select * from CITY
select * from VILLAGE
--1. Display all the villages of Rajkot city.

select v.name from VILLAGE v 
left join CITY c 
on v.CityID=c.CityID
where v.CityID=1

--2. Display city along with their villages & pin code.

select c.name [city name] ,v.name [villages],c.pincode from CITY c
inner join VILLAGE v 
on c.CityID=v.CityID

--3. Display the city having more than one village.

select c.name,count(v.cityid) from CITY c
inner join VILLAGE v on c.CityID=v.CityID
group by c.Name
having count(v.cityid)>1

--4. Display the city having no village.

select c.Name from CITY c
where CityID not in (select CityID from VILLAGE)

--5. Count the total number of villages in each city.

select c.name, count(v.vid) from CITY c
inner join VILLAGE v on c.CityID=v.CityID
group by c.Name

--6. Count the number of cities having more than one village.

select count(c.CityID) from CITY c
inner join VILLAGE v on c.CityID=v.CityID
where count(v.cityid)>1

select COUNT(c.name)
from CITY c
where c.Name in (

select c.name from CITY c
inner join VILLAGE v on c.CityID=v.CityID
group by c.Name
having count(v.cityid)>1

)

select * from STUDENT1

-- Try to update SPI of Raju from 8.80 to 12.
update STUDENT1 set SPI=12 
where name='Raju'

-- Try to update Bklog of Neha from 0 to -1

update STUDENT1 set Bklog=-1 
where name='Neha'
.

--lab 9 Part - B: 
--Create table as per following schema with proper validation and try to insert data which violate your validation.
--1. Emp(Eid, Ename, Did, Cid, Salary, Experience)
--Dept(Did, Dname)
--City(Cid, Cname)

CREATE TABLE City (
    Cid INT PRIMARY KEY, 
    Cname VARCHAR(100) UNIQUE NOT NULL 
);

CREATE TABLE Dept (
    Did INT PRIMARY KEY, 
    Dname VARCHAR(100) UNIQUE NOT NULL 
);

CREATE TABLE Emp (
    Eid INT PRIMARY KEY, 
    Ename VARCHAR(100) NOT NULL, 
    Did INT, 
    Cid INT, 
    Salary DECIMAL(10,2) CHECK (Salary > 0), 
    Experience INT CHECK (Experience >= 0),
    FOREIGN KEY (Did) REFERENCES Dept(Did), 
    FOREIGN KEY (Cid) REFERENCES City(Cid)  
);

DROP TABLE CITY

--LAB 9 PART C
-- 1. Emp(Eid, Ename, Did, Cid, Salary, Experience)
-- Dept(Did, Dname)
-- City(Cid, Cname, Did))
-- District(Did, Dname, Sid)
-- State(Sid, Sname, Cid)
-- Country(Cid, Cname)
CREATE TABLE City (
    Cid INT PRIMARY KEY, 
    Cname VARCHAR(100) UNIQUE NOT NULL, 
    Did INT, 
    FOREIGN KEY (Did) REFERENCES District(Did) 
);
CREATE TABLE Dept (
    Did INT PRIMARY KEY, 
    Dname VARCHAR(100) UNIQUE NOT NULL 
);
CREATE TABLE District (
    Did INT PRIMARY KEY, 
    Dname VARCHAR(100) UNIQUE NOT NULL, 
    Sid INT, 
    FOREIGN KEY (Sid) REFERENCES State(Sid) 
);
CREATE TABLE State (
    Sid INT PRIMARY KEY, 
    Sname VARCHAR(100) UNIQUE NOT NULL, 
    Cid INT, 
    FOREIGN KEY (Cid) REFERENCES Country(Cid) 
);

CREATE TABLE Country (
    Cid INT PRIMARY KEY, 
    Cname VARCHAR(100) UNIQUE NOT NULL 
);
CREATE TABLE Emp (
    Eid INT PRIMARY KEY, 
    Ename VARCHAR(100) NOT NULL, 
	Did INT,
    Cid INT, 
    Salary DECIMAL(10,2) CHECK (Salary > 0), 
    Experience INT CHECK (Experience >= 0), 
    FOREIGN KEY (Did) REFERENCES Dept(Did), 
    FOREIGN KEY (Cid) REFERENCES City(Cid)  
);

-- 2. Insert 5 records in each table.
INSERT INTO Country (Cid, Cname) VALUES (1, 'USA');
INSERT INTO Country (Cid, Cname) VALUES (2, 'Canada');
INSERT INTO Country (Cid, Cname) VALUES (3, 'Mexico');
INSERT INTO Country (Cid, Cname) VALUES (4, 'India');
INSERT INTO Country (Cid, Cname) VALUES (5, 'Brazil');

SELECT * FROM Country

INSERT INTO State (Sid, Sname, Cid) VALUES (1, 'California', 1);
INSERT INTO State (Sid, Sname, Cid) VALUES (2, 'Ontario', 2);
INSERT INTO State (Sid, Sname, Cid) VALUES (3, 'Nuevo León', 3);
INSERT INTO State (Sid, Sname, Cid) VALUES (4, 'Maharashtra', 4);
INSERT INTO State (Sid, Sname, Cid) VALUES (5, 'São Paulo', 5);
SELECT * FROM STATE

INSERT INTO District (Did, Dname, Sid) VALUES (1, 'Los Angeles', 1);
INSERT INTO District (Did, Dname, Sid) VALUES (2, 'Toronto', 2);
INSERT INTO District (Did, Dname, Sid) VALUES (3, 'Monterrey', 3);
INSERT INTO District (Did, Dname, Sid) VALUES (4, 'Mumbai', 4);
INSERT INTO District (Did, Dname, Sid) VALUES (5, 'São Paulo City', 5);
SELECT * FROM District

INSERT INTO City (Cid, Cname, Did) VALUES (1, 'Los Angeles', 1);
INSERT INTO City (Cid, Cname, Did) VALUES (2, 'Toronto', 2);
INSERT INTO City (Cid, Cname, Did) VALUES (3, 'Monterrey', 3);
INSERT INTO City (Cid, Cname, Did) VALUES (4, 'Mumbai', 4);
INSERT INTO City (Cid, Cname, Did) VALUES (5, 'São Paulo', 5);
SELECT * FROM CITY

INSERT INTO Dept (Did, Dname) VALUES (1, 'IT');
INSERT INTO Dept (Did, Dname) VALUES (2, 'HR');
INSERT INTO Dept (Did, Dname) VALUES (3, 'Finance');
INSERT INTO Dept (Did, Dname) VALUES (4, 'Marketing');
INSERT INTO Dept (Did, Dname) VALUES (5, 'Sales');
SELECT * FROM DEPT

INSERT INTO Emp (Eid, Ename, Did, Cid, Salary, Experience) VALUES (1, 'John Doe', 1, 1, 5000.00, 5);
INSERT INTO Emp (Eid, Ename, Did, Cid, Salary, Experience) VALUES (2, 'Jane Smith', 2, 2, 6000.00, 3);
INSERT INTO Emp (Eid, Ename, Did, Cid, Salary, Experience) VALUES (3, 'Alice Johnson', 3, 3, 5500.00, 4);
INSERT INTO Emp (Eid, Ename, Did, Cid, Salary, Experience) VALUES (4, 'Bob Brown', 4, 4, 7000.00, 6);
INSERT INTO Emp (Eid, Ename, Did, Cid, Salary, Experience) VALUES (5, 'Charlie White', 5, 5, 4500.00, 2);
SELECT * FROM EMP

-- 3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all
-- employees.
SELECT 
    e.Ename AS EmployeeName,
    d.Dname AS DepartmentName,
    e.Salary,
    e.Experience,
    c.Cname AS City,
    dis.Dname AS District,
    s.Sname AS State,
    co.Cname AS Country
FROM Emp e 
	INNER JOIN Dept d ON e.Did = d.Did
	INNER JOIN City c ON e.Cid = c.Cid
	INNER JOIN District dis ON c.Did = dis.Did
	INNER JOIN State s ON dis.Sid = s.Sid
	INNER JOIN Country co ON s.Cid = co.Cid;

--LAB10 PART-A--

CREATE TABLE STUDENT (
    Rno INT PRIMARY KEY,       
    Name VARCHAR(100) NOT NULL,  
    City VARCHAR(100) NOT NULL,  
    DID INT                      
);

INSERT INTO STUDENT (Rno, Name, City, DID) VALUES 
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

SELECT * FROM STUDENT

CREATE TABLE ACADEMIC (
    Rno INT PRIMARY KEY,         
    SPI DECIMAL(3, 2) NOT NULL,  
    Bklog INT NOT NULL           
);

SELECT * FROM ACADEMIC
INSERT INTO ACADEMIC (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE DEPARTMENT (
    DID INT PRIMARY KEY,      
    DName VARCHAR(50) NOT NULL 
);

INSERT INTO DEPARTMENT (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');
SELECT * FROM Department

-- 1. Display details of students who are from the Computer department.
SELECT s.Rno, s.Name, s.City, s.DID
FROM STUDENT s
WHERE s.DID = (SELECT d.DID FROM DEPARTMENT d WHERE d.DName = 'Computer');

-- 2. Displays name of students whose SPI is more than 8.
SELECT s.Name
FROM STUDENT s
WHERE s.Rno IN (SELECT a.Rno FROM ACADEMIC a WHERE a.SPI > 8);

-- 3. Display details of students of the Computer department who belong to Rajkot city.
SELECT s.Rno, s.Name, s.City, s.DID
FROM STUDENT s
WHERE s.City = 'Rajkot' AND s.DID = (SELECT d.DID FROM DEPARTMENT d WHERE d.DName = 'Computer');

-- 4. Find the total number of students of the Electrical department.
SELECT COUNT(*) AS Total_Students
FROM STUDENT s
WHERE s.DID = (SELECT d.DID FROM DEPARTMENT d WHERE d.DName = 'Electrical');

-- 5. Display the name of the student who is having the maximum SPI.
SELECT s.Name
FROM STUDENT s
JOIN ACADEMIC a ON s.Rno = a.Rno
WHERE a.SPI = (SELECT MAX(SPI) FROM ACADEMIC);

-- 6. Display details of students having more than 1 backlog.
SELECT s.Rno, s.Name, s.City, s.DID
FROM STUDENT s
WHERE s.Rno IN (SELECT a.Rno FROM ACADEMIC a WHERE a.Bklog > 1);

-- 7. Display the name of the student who is having the second-highest SPI.
SELECT s.Name
FROM STUDENT s
JOIN ACADEMIC a ON s.Rno = a.Rno
WHERE a.SPI = (
    SELECT MAX(SPI) 
    FROM ACADEMIC 
    WHERE SPI < (SELECT MAX(SPI) FROM ACADEMIC)
);

-- 8. Display the name of students who are either from the Computer department or from the Mechanical department.
SELECT s.Name
FROM STUDENT s
WHERE s.DID IN (SELECT d.DID FROM DEPARTMENT d WHERE d.DName IN ('Computer', 'Mechanical'));

-- 9. Display the name of students who are in the same department as student 102.
SELECT s.Name
FROM STUDENT s
WHERE s.DID = (SELECT s2.DID FROM STUDENT s2 WHERE s2.Rno = 102);

-- 10. Display the name of students whose SPI is more than 9 and who are from the Electrical department.
SELECT s.Name
FROM STUDENT s
WHERE s.Rno IN (SELECT a.Rno FROM ACADEMIC a WHERE a.SPI > 9)
AND s.DID = (SELECT d.DID FROM DEPARTMENT d WHERE d.DName = 'Electrical');



--lab 10 PART-B--

CREATE TABLE COMPANY_MASTER (
    COM_ID INT PRIMARY KEY,
    COM_NAME VARCHAR(100) NOT NULL
);

INSERT INTO COMPANY_MASTER (COM_ID, COM_NAME) VALUES
(11, 'Samsung'),
(12, 'iBall'),
(13, 'Epsion'),
(14, 'Zebronics'),
(15, 'Asus'),
(16, 'Frontech');

CREATE TABLE ITEM_MASTER (
    PRO_ID INT PRIMARY KEY,
    PRO_NAME VARCHAR(100) NOT NULL,
    PRO_PRICE DECIMAL(10, 2) NOT NULL,
    PRO_COM INT,
    FOREIGN KEY (PRO_COM) REFERENCES COMPANY_MASTER(COM_ID)
);

INSERT INTO ITEM_MASTER (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
(101, 'Mother Board', 3200, 15),
(102, 'Key Board', 450, 16),
(103, 'ZIP drive', 250, 14),
(104, 'Speaker', 550, 16),
(105, 'Monitor', 5000, 11),
(106, 'DVD drive', 900, 12),
(107, 'CD drive', 800, 12),
(108, 'Printer', 2600, 13),
(109, 'Refill cartridge', 350, 13),
(110, 'Mouse', 250, 12);


CREATE TABLE EMP_DEPARTMENT (
    DPT_CODE INT PRIMARY KEY,
    DPT_NAME VARCHAR(100) NOT NULL,
    DPT_ALLOTMENT DECIMAL(10, 2) NOT NULL
);

INSERT INTO EMP_DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) VALUES
(57, 'IT', 65000),
(63, 'Finance', 15000),
(47, 'HR', 240000),
(27, 'RD', 55000),
(89, 'QC', 75000);


CREATE TABLE EMP_DETAILS (
    EMP_IDNO INT PRIMARY KEY,
    EMP_FNAME VARCHAR(100) NOT NULL,
    EMP_LNAME VARCHAR(100) NOT NULL,
    EMP_DEPT INT,
    FOREIGN KEY (EMP_DEPT) REFERENCES EMP_DEPARTMENT(DPT_CODE)
);

INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT) VALUES
(127323, 'Michale', 'Robbin', 57),
(526689, 'Carlos', 'Snares', 63),
(843795, 'Enric', 'Dosio', 57),
(328717, 'Jhon', 'Snares', 63),
(444527, 'Joseph', 'Dosni', 47),
(659831, 'Zanifer', 'Emily', 47),
(847674, 'Kuleswar', 'Sitaraman', 57),
(748681, 'Henrey', 'Gabriel', 47),
(555935, 'Alex', 'Manuel', 57),
(539569, 'George', 'Mardy', 27),
(733843, 'Mario', 'Saule', 63),
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);

select * from EMP_DETAILS

-- 1. Write a SQL query to calculate the average price of each manufacturer's product along with their name.
	SELECT cm.COM_NAME AS Company,
    AVG(im.PRO_PRICE) AS Average_Price
	FROM ITEM_MASTER im
	INNER JOIN COMPANY_MASTER cm ON im.PRO_COM = cm.COM_ID
	GROUP BY cm.COM_NAME;

-- 2. Write a SQL query to calculate the average price of each manufacturer's product of 350 or more.
	SELECT cm.COM_NAME AS Company,
	AVG(im.PRO_PRICE) AS Average_Price
	FROM ITEM_MASTER im INNER JOIN 
    COMPANY_MASTER cm ON im.PRO_COM = cm.COM_ID
	WHERE im.PRO_PRICE >= 350
	GROUP BY cm.COM_NAME;

-- 3. Write a SQL query to find the most expensive product of each company.
	SELECT im.PRO_NAME AS Product_Name,
    im.PRO_PRICE AS Price,
    cm.COM_NAME AS Company
	FROM ITEM_MASTER im
	INNER JOIN COMPANY_MASTER cm ON im.PRO_COM = cm.COM_ID
	WHERE im.PRO_PRICE = (
	SELECT MAX(PRO_PRICE)FROM ITEM_MASTER WHERE PRO_COM = im.PRO_COM
	);

-- 4. Write a SQL query to find employees whose last name is Gabriel or Dosio.
	SELECT e.EMP_IDNO AS emp_idno,
    e.EMP_FNAME AS emp_fname,
    e.EMP_LNAME AS emp_lname,
    e.EMP_DEPT AS emp_dept
	FROM EMP_DETAILS e
	WHERE e.EMP_LNAME IN ('Gabriel', 'Dosio');

-- 5. Write a SQL query to find the employees who work in department 89 or 63.
	SELECT e.EMP_IDNO AS emp_idno,
    e.EMP_FNAME AS emp_fname,
    e.EMP_LNAME AS emp_lname,
    e.EMP_DEPT AS emp_dept
	FROM EMP_DETAILS e
	WHERE e.EMP_DEPT IN (89, 63);


--lab 10 part c

--1. Write a SQL query to find those employees who work for the department where the departmental allotment amount is more than Rs. 50000. Return emp_fname and emp_lname.

SELECT ed.EMP_FNAME, ed.EMP_LNAME
FROM EMP_DETAILS ed
JOIN EMP_DEPARTMENT edp ON ed.EMP_DEPT = edp.DPT_CODE
WHERE edp.DPT_ALLOTMENT > 50000;

--2. Write a SQL query to find the departments whose sanction amount is higher than the average sanction amount for all departments. Return dpt_code, dpt_name and dpt_allotment.

SELECT d.DPT_CODE,d.DPT_NAME,d.DPT_ALLOTMENT
FROM EMP_DEPARTMENT d
WHERE d.DPT_ALLOTMENT > (
        SELECT AVG(DPT_ALLOTMENT) 
        FROM EMP_DEPARTMENT
    );

--3. Write a SQL query to find which departments have more than two employees. Return dpt_name.

SELECT edp.DPT_NAME 
FROM EMP_DETAILS ed
INNER JOIN EMP_DEPARTMENT edp ON ed.EMP_DEPT = edp.DPT_CODE
GROUP BY edp.DPT_NAME
HAVING COUNT(ed.EMP_IDNO) > 2;

--4. Write a SQL query to find the departments with the second lowest sanction amount. Return emp_fname and emp_lname


--lab 11 part a

CREATE TABLE Orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

CREATE TABLE Salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(3, 2)
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    Grade INT,
    salesman_id INT
);


-- 1. Find all the orders issued by the salesman 'Paul Adam'.1. Write a SQL query to find all the orders issued by the salesman 'Paul Adam'.
--Return ord_no, purch_amt, ord_date, customer_id and salesman_id.

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM ORDERS 
WHERE salesman_id = (SELECT salesman_id FROM SALESMAN WHERE name = 'Paul Adam');

-- 2. Find all orders generated by London-based salespeople

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM ORDERS 
WHERE salesman_id IN (SELECT salesman_id FROM SALESMAN WHERE city = 'London');

-- 3. Find all orders generated by the salespeople who may work for customers whose id is 3007

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM ORDERS 
WHERE salesman_id IN (SELECT salesman_id FROM CUSTOMER WHERE customer_id = 3007);

-- 4. Find the order values greater than the average order value of 10th October 2012

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM ORDERS 
WHERE purch_amt > (SELECT AVG(purch_amt) FROM ORDERS WHERE ord_date = '10-10-2012');

-- 5. Find all the orders generated in New York city

SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM ORDERS 
WHERE salesman_id IN (SELECT salesman_id FROM SALESMAN WHERE city = 'New York');

-- 6. Determine the commission of the salespeople in Paris

SELECT commission FROM SALESMAN WHERE city = 'Paris';

-- 7. Display all the customers whose ID is 2001 below the salesperson ID of Mc Lyon
SELECT * FROM CUSTOMER 
WHERE customer_id = AND salesman_id = (SELECT salesman_id FROM SALESMAN WHERE name = 'Mc Lyon');

-- 8. Count the number of customers with grades above the average in New York City
SELECT grade, COUNT(*) AS customer_count
FROM CUSTOMER 
WHERE grade > (SELECT AVG(grade) FROM CUSTOMER) AND city = 'New York'
GROUP BY grade;

-- 9. Find those salespeople who earned the maximum commission
SELECT ord_no, purch_amt, ord_date, salesman_id 
FROM ORDERS 
WHERE salesman_id = (SELECT salesman_id 
                     FROM SALESMAN 
                     WHERE commission = (SELECT MAX(commission) FROM SALESMAN));

-- 10. Find the customers who placed orders on 17th August 2012
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id, cust_name 
FROM ORDERS 
JOIN CUSTOMER USING (customer_id)
WHERE ord_date = '17-08-2012';

-- 11. Find salespeople who had more than one customer
SELECT salesman_id, name 
FROM SALESMAN 
WHERE salesman_id IN (SELECT salesman_id 
                      FROM CUSTOMER 
                      GROUP BY salesman_id 
                      HAVING COUNT(customer_id) > 1);

-- 12. Find those orders which are higher than the average amount of the orders
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM ORDERS 
WHERE purch_amt > (SELECT AVG(purch_amt) FROM ORDERS);

-- 13. Find those orders that are equal or higher than the average amount of the orders
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM ORDERS 
WHERE purch_amt >= (SELECT AVG(purch_amt) FROM ORDERS);

-- 14. Find the sums of the amounts from the orders table, grouped by date, and eliminate all dates where the sum was not at least 1000.00 above the maximum order amount for that date
SELECT ord_date, SUM(purch_amt) AS total_amount 
FROM ORDERS 
GROUP BY ord_date 
HAVING SUM(purch_amt) > 1000 + (SELECT MAX(purch_amt) FROM ORDERS WHERE ORDERS.ord_date = ORDERS.ord_date);

-- 15. Extract all data from the customer table if and only if one or more of the customers are located in London
SELECT * 
FROM CUSTOMER 
WHERE city = 'London';

-- Part B:

-- 1. Find salespeople who deal with multiple customers
SELECT salesman_id, name, city, commission 
FROM SALESMAN 
WHERE salesman_id IN (SELECT salesman_id 
                      FROM CUSTOMER 
                      GROUP BY salesman_id 
                      HAVING COUNT(customer_id) > 1);

-- 2. Find salespeople who deal with a single customer
SELECT salesman_id, name, city, commission 
FROM SALESMAN 
WHERE salesman_id IN (SELECT salesman_id 
                      FROM CUSTOMER 
                      GROUP BY salesman_id 
                      HAVING COUNT(customer_id) = 1);

-- 3. Find the salespeople who deal with customers with more than one order
SELECT salesman_id, name, city, commission 
FROM SALESMAN 
WHERE salesman_id IN (SELECT salesman_id 
                      FROM ORDERS 
                      GROUP BY customer_id 
                      HAVING COUNT(ord_no) > 1);

-- 4. Find the salespeople who deal with those customers who live in the same city
SELECT DISTINCT S.salesman_id, S.name, S.city, S.commission
FROM SALESMAN S
JOIN CUSTOMER C ON S.salesman_id = C.salesman_id
WHERE S.city = C.city;

-- 5. Find salespeople whose place of residence matches any city where customers live
SELECT DISTINCT S.salesman_id, S.name, S.city, S.commission 
FROM SALESMAN S 
JOIN CUSTOMER C ON S.city = C.city;

-- 6. Find all salespeople whose names appear alphabetically lower than the customer’s name
SELECT S.salesman_id, S.name, S.city, S.commission 
FROM SALESMAN S 
JOIN CUSTOMER C ON S.salesman_id = C.salesman_id 
WHERE S.name < C.cust_name;

-- 7. Find customers with a higher grade than all customers alphabetically below New York City
SELECT customer_id, cust_name, city, grade, salesman_id 
FROM CUSTOMER 
WHERE grade > (SELECT MAX(grade) 
               FROM CUSTOMER 
               WHERE city > 'New York');

-- 8. Find all orders whose order amount exceeds at least one of the orders placed on September 10th 2012
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM ORDERS 
WHERE purch_amt > (SELECT purch_amt 
                   FROM ORDERS 
                   WHERE ord_date = '10-09-2012');

-- 9. Find orders where the order amount is less than the order amount of a customer residing in London
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM ORDERS 
WHERE purch_amt < (SELECT purch_amt 
                   FROM ORDERS 
                   WHERE customer_id IN (SELECT customer_id FROM CUSTOMER WHERE city = 'London'));

-- 10. Find those orders where every order amount is less than the maximum order amount of a customer who lives in London
SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id 
FROM ORDERS 
WHERE purch_amt < (SELECT MAX(purch_amt) 
                   FROM ORDERS 
                   WHERE customer_id IN (SELECT customer_id FROM CUSTOMER WHERE city = 'London'));

-- Part C:

-- 1. Find customers whose grades are higher than those living in New York City
SELECT customer_id, cust_name, city, grade, salesman_id 
FROM CUSTOMER 
WHERE grade > (SELECT MAX(grade) 
               FROM CUSTOMER 
               WHERE city = 'New York');

-- 2. Calculate the total order amount generated by a salesperson from cities where the customers reside
SELECT S.name, S.city, SUM(O.purch_amt) AS total_order_amount
FROM ORDERS O
JOIN SALESMAN S ON O.salesman_id = S.salesman_id
JOIN CUSTOMER C ON O.customer_id = C.customer_id
WHERE S.city = C.city
GROUP BY S.name, S.city;

-- 3. Find customers whose grades are not the same as those who live in London
SELECT customer_id, cust_name, city, grade, salesman_id 
FROM CUSTOMER 
WHERE grade != (SELECT grade 
                FROM CUSTOMER 
                WHERE city = 'London');

-- 4. Find customers whose grades are different from those living in Paris
SELECT customer_id, cust_name, city, grade, salesman_id 
FROM CUSTOMER 
WHERE grade != (SELECT grade 
                FROM CUSTOMER 
                WHERE city = 'Paris');

-- 5. Find all customers who have different grades than any customer who lives in Dallas City
SELECT customer_id, cust_name, city, grade, salesman_id 
FROM CUSTOMER 
WHERE grade != (SELECT grade 
                FROM CUSTOMER 
                WHERE city = 'Dallas');






