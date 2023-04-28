/* Select distinct ejercicios */
/* Mostrar todos los apellidos de los empleados sin repetir */
SELECT DISTINCT lastName
FROM employees
ORDER BY lastName ASC; /* no se muestran repetidos */

/* si el valor de null esta en algun elemento de una columna, con el select 
distict lo mostrara solo una vez porque considera todos los NULL como equivalentes */
/* demostracion: */
SELECT DISTINCT state
FROM customers;

/* para obtener resultados no repetidos de dos columnas, y por ende combinaciones de las mismas sin repetir
se debe hacer de la siguiente manera */
SELECT DISTINCT city, state  /* el distict aplica a las combinaciones de city y state */
FROM customers 
WHERE state is not null
ORDER BY state, city /* primero se ordena por estado de forma ascendente, y el resultado por ciudad de forma asc tmb */