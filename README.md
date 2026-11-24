Desafío 1 - Introducción a Bases de Datos (PostgreSQL)
Academia: Desafío Latam
Estudiante: Jorge Leiva
Video de Demostración: Ver en YouTube https://youtu.be/DAFXdpnfuPc

📋 Rúbrica y Requerimientos Evaluados
#	Requerimiento de la Pauta	Detalle Técnico	Puntaje
1	Crear base de datos desafio-Jorge-Leiva-111	Manejo de identificadores con comillas dobles	2 Pts
2	Ingresar a la base de datos	Uso de metacomando \c	1 Pto
3	Crear tabla clientes	Estructura con 5 campos (VARCHAR, SMALLINT)	2 Pts
4	Insertar 10 clientes con prioridades distintas	Inserción múltiple con escala del 1 al 10	1 Pto
5	Seleccionar los 3 clientes de mayor prioridad	ORDER BY prioridad DESC LIMIT 3	2 Pts
6	Seleccionar clientes con prioridad mayor a 5	WHERE prioridad > 5	2 Pts
TOTAL	Cumplimiento 100% de la rúbrica	10 / 10 Pts
⏱️ Capítulos del Video (Marcas de tiempo)
00:00 - Introducción e ingreso al cliente psql
00:45 - Requerimiento 1: Creación de base de datos
01:50 - Requerimiento 2: Conexión a la base de datos (\c)
02:35 - Requerimiento 3: Creación de la tabla clientes
03:35 - Requerimiento 4: Inserción de 10 clientes
05:05 - Verificación completa (SELECT * FROM clientes;)
05:40 - Requerimiento 5: Top 3 clientes de mayor prioridad
06:15 - Requerimiento 6: Clientes con prioridad mayor a 5
06:45 - Cierre y salida con \q
📁 Archivos en este repositorio
desafio-Jorge-Leiva-111.sql: Script con todas las sentencias SQL comentadas punto por punto según la rúbrica.
README.md: Documentación formal de la entrega y desglose de evaluación.
🛠️ Instrucciones de Ejecución
Para replicar este proyecto en tu entorno local, sigue cualquiera de estas dos opciones:

Opción 1: Ejecución automática del script completo (Recomendada)
Desde la terminal de tu sistema operativo (ubicado en la carpeta del proyecto):

psql -U postgres -f desafio-Jorge-Leiva-111.sql
Opción 2: Ejecución paso a paso en la consola interactiva (psql)
# 1. Ingresar al cliente interactivo de PostgreSQL
psql -U postgres

# 2. Cargar y ejecutar el archivo dentro de psql
\i desafio-Jorge-Leiva-111.sql

# 3. O bien, copiar y pegar las sentencias del archivo paso a paso.
