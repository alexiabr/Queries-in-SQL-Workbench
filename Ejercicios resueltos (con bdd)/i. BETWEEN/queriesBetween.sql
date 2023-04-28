/* el operador between es un operador logico que evalua si un valor 
esta en un rango o no 
value BETWEEN low AND high;
el  operador between devuelve uno si el valor es mayor o igual al valor minimo y menor o igual al valor maximo
sino, devuelve cero
Si el valor, el low o el max son NULL devuelve null
ej: ESTO DEVUELVE 1 */
SELECT 15 BETWEEN 10 AND 16;
/* DEVUELVE CERO */
SELECT 15 between 20 and 30;

/* NOT BETWEEN */ 
/* Devuelve 1 si el valor es menor que el valor minimo o el valor mayor que el maximo
basicamente, si no esta dentro del rango */

SELECT 15 NOT BETWEEN 10 AND 20; /* da cero porque es falso, si esta en el rango */

/* Encontrar productos que su precio oscile entre 90 y 100 */
SELECT productName, buyPrice
from products
WHERE buyPrice BETWEEN 90 and 100;

/* si usas >= o <= obtenes el mismo resultado */
SELECT productCode, productName, buyPrice
FROM products
WHERE buyPrice >= 90 AND buyPrice <= 100;

/* Encontrar productos cuyo precio de compra no este entre 20 y 100*/
SELECT productName, buyPrice
FROM products
WHERE buyPrice NOT BETWEEN 20 and 100;

/* Se obtiene el mismo resultado escribiendolo asi */
SELECT productName, buyPrice
from products
WHERE buyPrice < 20 OR buyPrice > 100;

/* Usar between con fechas
para corroborar si un valor essta entre dos fechas hay que castearlo
a tipo DATE
ej, esta query devueven las ordenes que se encuentran entre dos fechas */
SELECT orderNumber, requiredDate, status
FROM orders
WHERE requireddate BETWEEN 
     CAST('2003-01-01' AS DATE) AND 
     CAST('2003-01-31' AS DATE); /* se quiere ver que ordenes se hicieron en esas fechas en especifico */