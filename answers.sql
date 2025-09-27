-- Question 1: Employee and Office Information with INNER JOIN
-- Get firstName, lastName, email, and officeCode of all employees
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: Product Information with LEFT JOIN
-- Get productName, productVendor, and productLine from products table
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3: Order Information with RIGHT JOIN (First 10 orders)
-- Get orderDate, shippedDate, status, and customerNumber
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
