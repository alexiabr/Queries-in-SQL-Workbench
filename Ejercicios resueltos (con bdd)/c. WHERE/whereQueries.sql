SELECT lastName, firstName, jobTitle
from employees
WHERE jobTitle LIKE "sales rep"; /* el LIKE no es case sensitive, a diferencia del = que solo aparece el resultado si se tipea exactamente respetando mayusculas y minusculas*/

/* Encontrar los empleados que el nombre de su trabajo sea Sales Rep y que su  office code sea 1: */
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle LIKE "Sales rep" AND officeCode = 1;

/* encontrar los empleados cuyo jobTitle sea sales rep o empleados cuyo office code sea 1: */
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = "Sales rep" OR officeCode = 1;

/* encontrar empleados que su officeCode este entre 1 y 3: */
SELECT lastName, firstName, officeCode
FROM employees 
WHERE officeCode BETWEEN 1 AND 3;

/* Encontrar los empleados cuyo lastName termine en "son" */
SELECT lastName, firstName
FROM employees
WHERE lastName LIKE "%son";

/* Encontrar empleados con office code 1, 2 y 3. */ 
SELECT lastName, firstName, officeCode 
FROM employees 
WHERE officeCode IN (1,2,3);

/* para saber si un dato es nulo, se usa el operador IS NULL */

/* query que encuentre las filas donde reportsTo es nulo*/
SELECT lastName, firstName, reportsTo
FROM EMPLOYEES 
WHERE reportsTo IS NULL;

/* Encontrar todas las filas donde el jobtitle NO sea Sales Rep */
SELECT lastName, firstName, jobTitle
FROM employees
WHERE jobTitle <>"Sales rep";

/* Encontrar todos los empleados cuyo officeCode sea mayor a 5 */
SELECT lastName, firstName, officeCode
FROM employees
WHERE officeCode > 5;

/* Encontrar todos los empleados cuyo officeCode sea menor o igual a 4 */
SELECT lastName, firstName, officeCode
FROM employees
WHERE officeCode <= 4;