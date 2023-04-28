/* El operador NOT niega el IN
value NOT IN (value1, value2, value3) 
NOT IN devuelve uno si el valor indicado no eqivale a ninguno en la lista, sino, devuelve 1
ej: */
SELECT 1 NOT IN (2,3,4); /* como no esta en la lista, da verdadero */

/* Devuelve null si queremos consultar si el valor NULL esta la izquierda, ej */
SELECT NULL NOT IN (1,2,3);

/* El not in es equivalente a esto */
/* NOT (value = value1 OR value = value2 OR value = valu3) O value <> value1 AND value <> value2 AND value <> value3 */

/* Encontrar las oficinas que no se encuentren en usa y francia */
SELECT officeCode, country 
from offices
WHERE country NOT IN ("France", "USA");