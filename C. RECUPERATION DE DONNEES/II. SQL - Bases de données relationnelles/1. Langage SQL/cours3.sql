/* EXO 1
#Display (from the employees table) the columns employeeID, age and first name. Display the 
# first name as “This employee's first name is ...”. */

use northwind2;
SELECT employeeID, FirstName as `This employee's first name is`, ROUND(datediff(now(),BirthDate)/365.25) as Age FROM employees;
#Requête de Pierre et Alvin
select employeeID, concat('this employee is first name is : ',firstname), DATE_FORMAT(NOW(),'%Y')-DATE_FORMAT(BirthDate,'%Y') as age from employees;

/* EXO 2
Calculate the number of orders */
select count(*) as `number of orders` from orders;

/* EXO 3
Calculate the total number of products sold  */
select SUM(Quantity) as 'number of products sold' from northwind2.`order details`;
select count(distinct ProductId) from `Order Details`;

/* EXO 4
4. Give a list of each product id, price and discount (discount is price * 0,10).  */
select ProductID, round((UnitPrice*0.1),2) as Discount from northwind2.products
GROUP BY ProductID
ORDER BY  ProductID;

/* EXO 5
5. Give a list of all countries in which we have customers (every country should appear only  */
SELECT distinct Country FROM northwind2.customers;

select count( distinct country) from customers
where country is not null;

/* EXO 6 
Give the customer id and name for every customer living in London, and sort the result by 
customer ID */
SELECT *  FROM northwind2.customers;
SELECT CustomerID, ContactName,City  FROM northwind2.customers
WHERE City = 'London';


select  CustomerID, CompanyName, City FROM northwind2.customers
WHERE City = 'London' AND length(CompanyName) = (SELECT Max(length(CompanyName)) FROM northwind2.customers WHERE City = 'London');

-- ppour creer une colonne cost avec des valeur par defaut 10
ALTER TABLE PRODUCTS ADD column cost decimal(10.4) default 10 after Unitprice;

-- Pour creeer une table a partir de donnée
CREATE TABLE MAgin15 AS
select productID , (UnitPrice-cost) as Margin from products
WHERE (UnitPrice-cost) > 15
ORDER BY MARGIN;

SELECT * FROM magin15

/* EXO 7 
Give the customer id and name for every customer living in London, and sort the result by 
customer ID */

/* EXO 8 
Select all customers where the city starts with “M” */
SELECT CustomerID, ContactName,City  FROM northwind2.customers
WHERE City like 'm%';

/* EXO 9 
 Calculate the average price of products from supplier 3  */
SELECT SupplierID , aVG(UnitPrice) FROM northwind2.products
WHERE SupplierID = 3 ;

/* EXO 10 
 10. Give a list of products (productno) with the total number of orders per product */
SELECT ProductID, count(*) FROM northwind2.`order details`
GROUP BY ProductID
ORDER BY count(*) DESC
-- Limiter permet de filtrer les premier résultat affiché
limit 10;

/* EXO 11 
 11. Give a list of the total number of orders per year and per month (year, month, number of 
orders). Sort the result in chronologic order.*/
SELECT date_format(OrderDate, '%Y') as YEAR, date_format(OrderDate, '%M') as MONTH, count(OrderID) AS NUMBER FROM northwind2.orders 
group by date_format(OrderDate, '%m') ,date_format(OrderDate, '%Y')  
ORDER by date_format(OrderDate, '%Y'),date_format(OrderDate, '%m')  ;

/* EXO 12 
12. Give a list of all product categories(and their number of products and number of suppliers)
and order by the no. of counts (descending). Only take products from the first ten suppliers.*/
SELECT CategoryID , count(SupplierID) AS SUPPLIERS, count(ProductID) AS PRODUIT FROM northwind2.products
WHERE SupplierID <= 10
GROUP BY CategoryID
ORDER BY SUPPLIERS DESC;

/* EXO 13 
13. Display the number of customers per country.*/
SELECT  Country, count(CustomerID) FROM northwind2.customers
GROUP BY  Country
ORDER BY Country;

/* EXO 14 
14. Calculate the age distribution of employees (counts of employees per year). Assume that the 
the products where the price is higher than $20. sort the result by supplier id.
 .*/
 
SELECT date_format(HireDate, '%Y') AS HIRE_YEARS, ROUND(SUM(datediff(now(),HireDate)/365.25)) HIRE_AGE, count(EmployeeID) AS NOMBRE FROM northwind2.employees
GROUP BY date_format(HireDate, '%Y');
 
 /* EXO 15 
 15. Give supplier id and the number of products sold for every supplier. Only take into account
the products where the price is higher than $20. sort the result by supplier id.
 .*/
 
 SELECT SupplierID, count(ProductID), UnitPrice FROM northwind2.products
 WHERE UnitPrice > '20'
 GROUP BY SupplierID
 ORDER BY SupplierID;
 
 /* EXO 16 
16. Give the number of unique customers who purchased, per month (with the number of 
purchases attached). Only look at July, August and September. Sort the results per month
age is calculated on the date that the script is run. .*/
SELECT CustomerID, date_format(OrderDate, '%M'), count(CustomerID) FROM northwind2.orders
WHERE date_format(OrderDate, '%m') BETWEEN 7 AND 9
GROUP BY CustomerID;

