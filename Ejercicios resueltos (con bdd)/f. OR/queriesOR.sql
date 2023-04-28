/* Si tanto A Y B son NO NULOS, el operador OR retorna 1 si por lo menos uno de ellos es diferente a cero */
SELECT 1 OR 1, 1 OR 0, 0 OR 1;

/* Si ambos valores son cero, retorna 0 (falso) */
SELECT 0 AND 0;

/* Si A y/o B son nulos, el OR devuelve 1 si por lo menos A  o B es distinto de cero, sino retorna nulo */
SELECT 1 OR NULL, NULL AND 0, NULL OR NULL;

/* SQL EVALUA EL PRIMER ELEMENTO, SI la primera condicion es VERDADERO YA DEVUELVE UN verdadero */
/* En orden de prioridad primero se evalua el AND y luego el OR */
SELECT 1 OR 0 AND 0;  /* USAR PARENTESIS SI SE QUIERE CAMBIAR ORDEN */

/* Mostrar todos los clientes que vivan en usa o francia */
SELECT customerName, country
FROM customers
WHERE country = "USA" or country = "France";

/* mostrar todos los clientes que vivan en usa o en francia y que tengan un limite crediticio mayor a 100k */
SELECT customerName, country, creditLimit
FROM customers
WHERE (country = "USA" OR country = "France") AND creditLimit > 100000;
/* si no uso parentesis me va a devolver clientes que vivan en usa o que vivan france y que tengan un limite crediticio mayor a 100000 */
SELECT customername, country, creditLimit
FROM  customers
WHERE country = 'USA'OR country = 'France' AND creditlimit > 100000;