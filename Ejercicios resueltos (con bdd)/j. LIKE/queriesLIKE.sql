/* el operador like es un operador logico que prueba si un string 
contiene un patron de caracteres especificos o no 
/* si se contienen esos caracteres devuelve 1, sino 0
SQL provee ademas dos caracteres: % y _
% permite que se matchee con un string que comparta esos caracteres, uno mas o muchos mas
en cambio, _, solo permite obtener un string que tenga solo un caracter mas deallocate prepare
dependiendo de donde este ubicado
like $so = devuelve todo lo que termine con so en la columna en cuestion
like _so = solo devuelve strings que empiecen con cualquier letra pero las dos
siguientes deben ser so */

/*Encontrar que empleados su primer nombre empieza con A */
SELECT firstName
from employees
WHERE (firstName LIKE "A%");

/* Encontrar que empleados su apellido termina en ON */
SELECT lastName 
FROM employees
WHERE lastName LIKE "%on"; /* el like no es case sensitive */

/* Encontrar todos lo empleados que su apellido contenga el substring on */
SELECT lastName
FROM employees 
WHERE lastName LIKE "%on%";

/* Encontrar epleados que su nombre empiece con T y terminen con M, como tom o tim */
SELECT firstName
FROM employees
WHERE firstName LIKE "T_M";

/* NOT LIKE */
/* Encontrar empleados que su apelido no empiece con B */
SELECT firstName, lastName
FROM employees
WHERE firstName NOT LIKE "B%";

/* ESCAPE CLAUSE */
/* Si vos por ejemplo necesitas que se devuelvan filas que contienen un valor como % o _
necesitas indicarle al like que efectivamnte queres que te devuelva
ese caracter tambien. La manera de hacerlo es incluir un \ (barra invertida)
para que sql sepa que efectivamente queres el _ */

SELECT productCode, productName
FROM products
WHERE productCode LIKE "%\_20%"; /* adelante del asterisco puede haber lo que se
quiera, despues del 20 tambien */

/* tambien se puede usar la clausula ESCAPE */
/* tenes que aclarar cual va a ser el caracter de escape, el cual por defecto
es \*/
SELECT productCode, productName
FROM products
WHERE productCode LIKE '%$_20%' ESCAPE '$'; /* el caracter de escape/omision es $ */
