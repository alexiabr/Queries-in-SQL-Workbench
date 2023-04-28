/* el operador in permite determinar si algun valor matcea con una ista de valor
su sintaxis: value IN(value1, value2, value3,...)
IN devuelve 1 (true) si value es equivalente a cualquier valor de la lista, sino cero
Es equivalente la combinacion de mutliples OR
El siguiente ejemplo da 1 porque el valor ingresado corresponde a alguno de los del parentesis */
SELECT 1 IN (1,2,3);
/* EL SIGUIENTE DA CERO, PORQUE 4 NO SE ENCUENTRA EN LA LISTA */
SELECT 4 IN (1,2,3);

/* IN retorna nulo si se da uno de los dos siguientes casos: 
1) el valor de lado izquierdo es nulo
2) el valor no equivale a ninguno de los valores en la lista y uno de esos valores es nulo*/
SELECT null IN (1,2,3), 3 in (1, 2, null), null in (1,2,3,null); /* No se toma como equivalente null con null, aca da falso porque null aparece en la lista de valores */

/*Encontrar las oficinas que se encuentre en USA y Francia */
SELECT officeCode, city, country 
FROM offices
WHERE country IN ("USA", "France");

/* tambien se puede obtener el mismo resulatado con un or */
SELECT officeCode, city, country
FROM offices
WHERE country ="France" or country = "USA"