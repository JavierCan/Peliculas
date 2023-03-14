
--create database and table peliculas;

CREATE DATABASE peliculas;
USE peliculas;




CREATE TABLE peliculas (
  id_pelicula INT ,
  titulo VARCHAR(255) ,
  clasificacion INT ,
  proyeccion INT ,

    PRIMARY KEY (id_pelicula),
    FOREIGN KEY (clasificacion) REFERENCES CLASIFICACIONES(id_clasificacion),
    FOREIGN KEY (proyeccion) REFERENCES salas(id_sala)

);



CREATE TABLE salas (
  id_sala INT ,
  nombre VARCHAR(255) ,
  proyectando INT ,

    PRIMARY KEY (id_sala)
);

ADD CONSTRAINT proyectando
FOREIGN KEY (proyectando) REFERENCES peliculas(id_pelicula);







CREATE TABLE CLASIFICACIONES (
  id_clasificacion INT ,
  nombre VARCHAR(255) ,

    PRIMARY KEY (id_clasificacion)
);



INSERT INTO CLASIFICACIONES (id_clasificacion, nombre)
VALUES(1,"G"),
(2,"PG"),
(3,"PG-13"),
(4,"R"),
(5,"NC-17");

INSERT INTO salas (id_sala, nombre)
VALUES(1,"Sala 1"),
(2,"Sala 2"),
(3,"Sala 3"),
(4,"Sala 4"),
(5,"Sala 5");
insert INTO salas (id_sala, nombre)
VALUES(6,"Sala 6"),
(7,"Sala 7"),
(8,"Sala 8"),
(9,"Sala 9"),
(10,"Sala 10");

INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(1, "Toy story", 1, 3);


INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(2, "The dark knight", 3, 1);

INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(3, "The godfather", 4, 2);

INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(4, "The godfather: part II", 4, 4);

INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(5, "The lord of the rings: the return of the king", 3, 9);

INSERT INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(6, "Pulp fiction", 4, 5);

insert INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(7, "harry potter", 2, 6);

insert INTO peliculas (id_pelicula, titulo, clasificacion, proyeccion)
VALUES(8, "texas chainsaw massacre", 5, 7);

insert INTO peliculas (id_pelicula, titulo, clasificacion)
VALUES(9, "the shining", 4);

insert INTO peliculas (id_pelicula, titulo, clasificacion)
VALUES(10, "the exorcist", 4);

--insertar en salas proyectando
UPDATE salas SET proyectando = 1 WHERE id_sala = 3;
UPDATE salas SET proyectando = 2 WHERE id_sala = 1;
UPDATE salas SET proyectando = 3 WHERE id_sala = 2;
UPDATE salas SET proyectando = 4 WHERE id_sala = 4;
UPDATE salas SET proyectando = 5 WHERE id_sala = 9;
UPDATE salas SET proyectando = 6 WHERE id_sala = 5;
UPDATE salas SET proyectando = 7 WHERE id_sala = 6;
UPDATE salas SET proyectando = 8 WHERE id_sala = 7;
UPDATE salas SET proyectando = 9 WHERE id_sala = 8;


