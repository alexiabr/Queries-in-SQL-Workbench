/* el operador IS NULL sirve para corroborar si un valor es nulo o no 
sintaxis: value is null
si el valor es nulo devuelve 1, sino 0*/

SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;

/*Encontrar clientes que no tienen un representante de ventas */
SELECT customerName, salesRepEmployeeNumber
FROM customers
WHERE salesRepEmployeeNumber IS NULL;

/*Encontrar clientes que SI tienen un representante de ventas */
SELECT customerName, salesRepEmployeeNumber
FROM customers
WHERE salesRepEmployeeNumber IS NOT NULL;