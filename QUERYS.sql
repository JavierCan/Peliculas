USE  peliculas;
--1. Mostrar el nombre de todas las películas.
SELECT  titulo FROM  peliculas;
--2. Mostrar las distintas calificaciones de edad que existen. (Clasificación de las Películas que se puedan ver de acuerdo a las edades de los cinéfilos)
SELECT  DISTINCT clasificacion FROM  peliculas;

--3. Mostrar todas las películas que no han sido calificadas.
SELECT  titulo FROM  peliculas WHERE  clasificacion  IS NULL;

--4. Mostrar todas las salas que no proyectan ninguna película
SELECT  nombre FROM  salas WHERE  proyectando  IS NULL;

--5. Mostrar la información de todas las salas y, si se proyecta alguna película en la sala, mostrar también la información de la película.
SELECT  * FROM  salas LEFT JOIN  peliculas ON  salas . id_sala  =  peliculas . proyeccion;

--6. Mostrar la información de todas las películas y, si se proyecta en alguna sala, mostrar también la información de la sala.
SELECT  * FROM  peliculas LEFT JOIN  salas ON  peliculas . id_pelicula  =  salas . proyectando;

--7. Mostrar los nombres de las películas que no se proyectan en ninguna sala.
SELECT  titulo FROM  peliculas WHERE  proyeccion  IS NULL;

--8. Añadir una nueva película 'Uno, Dos, Tres', para mayores de 7 años.
INSERT INTO  peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(12, 'Uno, Dos, Tres', 2, NULL);

--9. Hacer constar que todas las películas no calificadas han sido calificadas 'no recomendables para menores de 13 años'
UPDATE  peliculas SET  clasificacion  = 2 WHERE  clasificacion  IS NULL;