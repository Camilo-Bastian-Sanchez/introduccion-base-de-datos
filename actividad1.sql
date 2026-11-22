-- =====================================================
-- Actividad 1: Trabajando con SQL desde la linea de comandos
-- =====================================================

-- Paso 1: Ingresar al cliente de PostgreSQL desde la terminal
-- (se escribe en la terminal, no dentro de psql)
-- Windows/Mac:  psql -U postgres
-- Linux:        sudo -u postgres psql

-- Paso 2: Crear la base de datos prueba1
CREATE DATABASE prueba1;

-- Paso 3: Listar las bases de datos
\l

-- Paso 4: Conectarse a la base de datos
\c prueba1

-- Paso 5: Crear la tabla estudiantes
CREATE TABLE estudiantes (
    nombres VARCHAR(50),
    notas VARCHAR(50)
);

-- Paso 6: Listar las tablas
\dt

-- Paso 7: Agregar la columna apellido
ALTER TABLE estudiantes ADD COLUMN apellido VARCHAR(50);

-- Paso 8: Describir la tabla
\d estudiantes

-- Paso 9: Eliminar la columna apellido
ALTER TABLE estudiantes DROP COLUMN apellido;

-- Paso 10: Ingresar 5 estudiantes con nombre y nota
INSERT INTO estudiantes (nombres, notas) VALUES ('Ana', '7');
INSERT INTO estudiantes (nombres, notas) VALUES ('Carlos', '5');
INSERT INTO estudiantes (nombres, notas) VALUES ('Maria', '9');
INSERT INTO estudiantes (nombres, notas) VALUES ('Diego', '3');
INSERT INTO estudiantes (nombres, notas) VALUES ('Sofia', '8');

-- Paso 11: Ingresar 2 estudiantes sin nota
INSERT INTO estudiantes (nombres) VALUES ('Lucas');
INSERT INTO estudiantes (nombres) VALUES ('Valentina');

-- Paso 12: Borrar los estudiantes sin nota
-- Un campo sin valor queda NULL. Para buscarlo se usa IS NULL (con "= NULL" no funciona)
DELETE FROM estudiantes WHERE notas IS NULL;

-- Paso 13: Cambiar a 10 la nota mas baja
-- Primero buscamos quien tiene la nota mas baja (ordenamos y limitamos a 1)
SELECT * FROM estudiantes ORDER BY notas ASC LIMIT 1;
-- El resultado es Diego (nota 3). Luego actualizamos su nota con UPDATE + WHERE
UPDATE estudiantes SET notas = '10' WHERE nombres = 'Diego';

-- Paso 14: Ingresar un estudiante con nombre de mas de 50 caracteres
INSERT INTO estudiantes (nombres, notas)
VALUES ('Juan Pablo Alejandro Sebastian de la Santisima Trinidad Gonzalez', '6');
-- Resultado: ERROR: value too long for type character varying(50)
-- No se inserta porque el nombre supera los 50 caracteres permitidos.

-- Paso 15: Seleccionar todos los datos
SELECT * FROM estudiantes;

-- Paso 16: Seleccionar el primer y segundo nombre usando WHERE
SELECT * FROM estudiantes WHERE nombres = 'Ana' OR nombres = 'Carlos';

-- Paso 17: Seleccionar los nombres ordenados alfabeticamente
SELECT nombres FROM estudiantes ORDER BY nombres ASC;

-- Paso 18: Los 3 estudiantes con la nota mas alta (orden decreciente + limite)
-- Ojo: notas es VARCHAR (texto), y el texto se ordena letra por letra,
-- asi que '10' quedaria DESPUES de '9'. Por eso convertimos la nota a numero con CAST.
SELECT * FROM estudiantes ORDER BY CAST(notas AS INTEGER) DESC LIMIT 3;

-- Paso 19: Notas entre 3 y 8 (dos condiciones unidas con AND)
SELECT * FROM estudiantes WHERE notas >= '3' AND notas <= '8';

-- Paso 20: Salir de PostgreSQL
\q
