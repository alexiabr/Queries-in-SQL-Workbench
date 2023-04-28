/* sql no tiene incorporado valores booleanos, si una condicion es verdadera devuelve
el valor 1, si no lo es el valor 0 
con AND solo devuelve 1 si ambas condiciones son no nulas y diferentes de cero */
SELECT 1 AND 1;

/* AND  devuelve cero si por lo menos uno de los dos valores es cero, o los dos*/
SELECT 1 AND 0, 0 AND 1, 0 AND 0, 0 AND NULL;

/* EL operador AND devuelve null si por lo menos uno de los valores no cero y null, o ambos null */
SELECT 1 AND NULL, NULL AND NULL;

/* ENCONTRAR clientes que vivan en el estado de california */
SELECT customerName, state, country
FROM customers
WHERE state = "CA" AND country = "USA";

/* encontrar clientes que vivan en california usa y que tengan un limite en la tarjeta mayor A 100k */
select customerName, state, country, creditLimit
from customers
WHERE state = "CA" AND country = "USA" AND creditLimit > 100000
