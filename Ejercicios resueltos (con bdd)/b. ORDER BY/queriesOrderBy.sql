/* Hacer una query que ordene a los clientes por su apellido en orden ascendiente.*/
SELECT contactLastName
FROM customers
ORDER BY contactLastName ASC;

/* Hacer una query que ordene a los clientes por su apellido en orden descendiente.*/
SELECT contactLastName
FROM customers
ORDER BY contactLastName DESC;

/* Hacer una query que ordene a los clientes en orden descendiente segun su apellido, y en orden ascendiente por su nombre */
SELECT contactLastName AS surname, contactFirstName AS "first name"
FROM customers
ORDER BY contactLastName DESC, contactFirstName ASC;
/* primero se ordenan los nombres segun el apellido, y al set resultante se lo ordena luego de manera ascendente segun el nombre */

/*hacer una query teniendo en cuenta la tabla orderdetails, que calcule el subtotal por cada item y organice segun dich subtotal */
SELECT orderNumber, quantityOrdered, priceEach, quantityOrdered * priceEach AS subtotal
FROM orderdetails
ORDER BY subtotal DESC;

/* calcular el total de lo vendido */
SELECT SUM(quantityOrdered * priceEach) AS total
FROM orderdetails;

/*Ordenar las ventas segun el estado en el que se encuentran*/
/*hay que usar field() asi determinamos el orden en el que queremos que se muestren los resultados */
/*El orden es el siguiente:
 In Process
On Hold
Cancelled
Resolved
Disputed
Shipped*/

SELECT orderNumber, status
FROM orders
ORDER BY FIELD(status, "In Process", "On Hold", "Cancelled", "Resolved", "Disputed", "Shipped");

/* Es muy util porque nos permite organizar los resultados segun el contenido de las filas de la forma que queramos" */

/* Cuando estamos ordenando segun una columna en especifico, los valores NULL aparecen primero en el set resultante */
/* Usar la clausula order by para ordenar a los empleados segun el valor en la columna reportsTo */
SELECT CONCAT(lastName, " ", firstName) AS EMPLOYEE, reportsTo
from employees
ORDER BY reportsTo;

/* Si se quiere evitar el valor null* */
SELECT CONCAT(lastName, " ", firstName) AS EMPLOYEE, reportsTo
from employees
WHERE reportsTo <> "NULL"
ORDER BY reportsTo;