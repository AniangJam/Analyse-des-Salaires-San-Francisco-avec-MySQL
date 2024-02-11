DESCRIBE salaries;
-- 1 SHOW ALL COLUMS AND ROWS IN THE TABLE
SELECT * FROM salaries;
-- 2 SHOW ONLY EMPLOYEENAME AND JOBTITLE COLUMNS
SELECT EmployeeName AS EmployeeName, JobTitle AS JobTitle
FROM salaries;

-- 3 SHOW THE NUMBER OF EMPLOYEES IN TH TABLE
SELECT count(EmployeeName) AS COUNTEMMPLOYEES 
FROM salaries;

-- 4 SHOW THE UNIQUE JOBTITLES IN THE TABLE
SELECT DISTINCT JobTitle AS Jobtitles 
FROM salaries;

-- 5 SHOW THE JOBTITLE AND OVERTIME PAY FOR ALL EMPLOYEES 
-- OVERTIME PAY GREATER THAN 50000

SELECT JobTitle AS JOBTITLE, OvertimePay AS OVERTIMEPAY
FROM salaries
WHERE OvertimePay > 50000;

-- 6 SHOW THE AVERAGE BASE PAY FOR ALL EMPLOYEES
SELECT AVG(BasePay) AS "Avg BasePay"
FROM salaries;

-- 7 SHOW THE TOP TEN HIGHEST PAID EMPLOYEES
SELECT EmployeeName,  TotalPay
FROM salaries ORDER BY TotalPay DESC
LIMIT 10;

-- 8 SHOW THE AVERAGE OF BASEPAY, OVERTIMEPAY AND OTHERPAY FOR EAH EMPLOYEE
SELECT EmployeeName, (BasePay + OverTimePay + OtherPay)/3 AS AVG_BASEPAY_OVERTIMEPAY_OTHERPAY
FROM salaries;

-- 9 SHWO ALL EMPLOYEE WHO HAVE THE WORD MANAGER IN THEIR JOB TITLE

SELECT EmployeeName, JobTitle
FROM salaries
WHERE JobTitle LIKE "%Manager%";

-- 10 SHWO ALL EMPLOYEE WITH JOBTITLE  NOT EGALE TO MANAGER 
SELECT EmployeeName, JobTitle
FROM salaries
WHERE JobTitle NOT LIKE "%Manager%";

-- 11 SHOW ALL EMPLOYEE WITH A TOTAL PAY BETWEEN 50,000 AND 75,000

SELECT EmployeeName, TotalPay
FROM salaries
WHERE TotalPay BETWEEN 50000 AND 75000
ORDER BY TotalPay DESC;

-- 12 SHOW ALL EMPLOYEE WITH A BASE PAY LES THAN 50 000 
-- OR A TOTAL PAY GREATER THAN 100 000

SELECT EmployeeName, BasePay
FROM salaries
WHERE BasePay <  50000
OR BasePay > 100000
ORDER BY TotalPay DESC;

-- 13 SHOW ALL EMPLOYEES WITH A TOTALPAY BENEFITS VALUE 
-- BETWEEN 125 000 AND 150 000 AND A JOB TITLE CONTAINING THE WORD DIRECTOR 

SELECT * FROM salaries 
WHERE TotalPayBenefits BETWEEN 125000 AND 150000
AND JobTitle like "%DIRECTOR%";

-- 14 SHOW ALL EMPLOYEE ORDERED BY THEIR TOTAL PAY BENEFITS IN DESC ORDR 
SELECT * FROM salaries
ORDER BY TotalPayBenefits DESC;

-- 15 SHOW ALL JOB TITLES WITH AN AVERAGES BASEPAY OR 
-- AT LEAST 100000 AND ORDER THEM BY THE AVERAGE BASEPAY IN DESC ORDER 

SELECT JobTitle, AVG(BasePay) AS "AVG BASEPAY"
FROM salaries
GROUP BY JobTitle 
HAVING AVG(BasePay) >= 100000
ORDER BY AVG(BasePay) DESC;

-- 16 