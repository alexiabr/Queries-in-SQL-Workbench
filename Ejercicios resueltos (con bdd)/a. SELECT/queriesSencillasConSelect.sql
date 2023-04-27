SELECT lastName, firstName, jobTitle /* si se quiere llamar a varias columnas hay que separarlos con coma*/
FROM employees;

SELECT * 
FROM employees; /* el asterisco permite llamar a todas las columnas de la tabla*/

SELECT Now(); /* permite ver hora y fecha actual, es una funcion pre-establecida y no lleva parametros*/ 

SELECT 1 + 1; /* se pueden hacer calculos sencillos*/

SELECT CONCAT('HOLA', " " , "QUE TENGAS UN BUEN DIA!"); /* SE PUEDEN concatenar strings tmb*/ 

SELECT CONCAT('HOLA', " " , "QUE TENGAS UN BUEN DIA!") AS saludo1; /* con AS, le asignas un alias a la columna resultante*/

SELECT CONCAT('HOLA', " " , "QUE TENGAS UN BUEN DIA!") saludo2; /* incluso se pueden asignar alias sin poner el as */

