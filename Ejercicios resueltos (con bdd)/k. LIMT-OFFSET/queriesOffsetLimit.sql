/* limit */ 
/* limita el numero de filas que se devuelven */
/* offset determina a partir de que fila devolver resultados y
limit cuantas filas en total se devolveran  */

/*Usar el limit para obtener la fila mayor o menor */
/* Encontrar los top 5 clientes que tienen el mayor credito */
SELECT customerNumber, customerName, creditLimit
from customers 
ORDER BY creditLimit DESC
LIMIT 5;

/* Encontrar los  5 clientes con el menor credito */
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit ASC
limit 5;
/* como hay mas de 5 clients con un limite crediticio cero, se deberia agregar
otra condicion para que devuelva un resultado consistente */
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit ASC, customerNumber
limit 5; /* devuelve los 5 primeros pero ademas de ordenarlos por el
credito, los ordena segun su numero de cliente en orden ascendendiente */ 

/* select distict y limit */
/* muestra los primeros 5 resultados DISTINTOS, se quiere encontrar 5 estados */

SELECT DISTINCT state
FROM customers
WHERE state IS NOT NULL
LIMIT 5;