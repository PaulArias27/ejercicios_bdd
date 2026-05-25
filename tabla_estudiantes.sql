drop table estudiantes;
create table estudiantes(
	id_estudiante INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	edad INT,
	curso VARCHAR(50),
	fecha_registro VARCHAR(10),
	

	constraint estudiantes_pk primary key(id_estudiante)
	
)

--modificacion de tabla 
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);

--insertar datos
INSERT INTO  estudiantes VALUES(1,'Juan','Perez',20,'Programacion','2026-01-10','juan@gmail.com');
INSERT INTO  estudiantes VALUES(2,'Paul','Arias',27,'software','2026-01-04','paul@gmail.com');
INSERT INTO  estudiantes VALUES(3,'Ana','Verde',24,'terapia','2026-02-11','ana@gmail.com');
INSERT INTO  estudiantes VALUES(4,'Pedro','Vite',28,'ia','2026-03-12','pedro@gmail.com');
INSERT INTO  estudiantes VALUES(5,'Jean','Perez',40,'cajero','2026-04-13','jean@gmail.com');
INSERT INTO  estudiantes VALUES(6,'Meche','Fajardo',59,'recursos','2026-05-14','meche@gmail.com');
INSERT INTO  estudiantes VALUES(7,'Ninoska','Zambrano',19,'medicina','2026-02-15','ninoska@gmail.com');
INSERT INTO  estudiantes VALUES(8,'Gabriela','Peralta',20,'enfermeria','2026-01-16','gabriela@gmail.com');
INSERT INTO  estudiantes VALUES(9,'Andrius','Burgos',23,'criminalistica','2026-01-17','andrius@gmail.com');
INSERT INTO  estudiantes VALUES(10,'Andres','Lopez',18,'banco','2026-04-18','andres@gmail.com');
INSERT INTO  estudiantes VALUES(11,'Gabriela','Rivera',23,'leguas','2026-05-19','gabriela@gmail.com');
INSERT INTO  estudiantes VALUES(12,'Nicolas','Rivera',16,'ciberseguridad','2026-02-20','nicolas@gmail.com');
INSERT INTO  estudiantes VALUES(13,'Valeria','Rivera',24,'terapia','2026-01-21','valeria@gmail.com');
INSERT INTO  estudiantes VALUES(14,'Rosita','Martillo',30,'psicologia','2026-03-22','rosita@gmail.com');
INSERT INTO  estudiantes VALUES(15,'Cristina','Martines',35,'enfermeria','2026-02-23','cristina@gmail.com');

--consultas 
SELECT * FROM estudiantes;

SELECT nombre,curso FROM estudiantes; 

SELECT * FROM estudiantes WHERE edad > 18;

SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

SELECT * FROM estudiantes WHERE curso = 'bases de datos';

SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

--update o actualizaciones
UPDATE estudiantes SET curso = 'ia' WHERE id_estudiante = '1';
UPDATE estudiantes SET curso = 'bases de datos' WHERE id_estudiante = '7';
UPDATE estudiantes SET edad = 12 WHERE id_estudiante = '9';
UPDATE estudiantes SET fecha_registro = '2026-05-02' WHERE id_estudiante = '12';
UPDATE estudiantes SET fecha_registro = '2026-05-02',edad = 15,apellido = 'Salazar' WHERE id_estudiante = '15';

--delete
DELETE FROM estudiantes WHERE id_estudiante = 1;
DELETE FROM estudiantes WHERE id_estudiante = 8;
DELETE FROM estudiantes WHERE curso ='ia';
DELETE FROM estudiantes WHERE edad = 15;
DELETE FROM estudiantes WHERE apellido = 'Perez';

-- consultas por fecha 
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-02-01' AND '2026-05-01';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programacion'AND fecha_registro > '2026-01-01';
