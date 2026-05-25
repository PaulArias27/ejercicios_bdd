
create table estudiantes(
	id_estudiante INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	edad INT,
	curso VARCHAR(50),
	fecha_registro VARCHAR(10),

	constraint estudiantes_pk primary key(id_estudiante)
	
)
--insertar datos
INSERT INTO  estudiantes VALUES(1,'Juan','Perez',20,'Programcion','2026-01-10');
INSERT INTO  estudiantes VALUES(2,'Paul','Arias',27,'software','2026-01-04');
INSERT INTO  estudiantes VALUES(3,'Ana','Verde',24,'terapia','2026-02-11');
INSERT INTO  estudiantes VALUES(4,'Pedro','Vite',28,'ia','2026-03-12');
INSERT INTO  estudiantes VALUES(5,'Jean','Perez',40,'cajero','2026-04-13');
INSERT INTO  estudiantes VALUES(6,'Meche','Fajardo',59,'recursos','2026-05-14');
INSERT INTO  estudiantes VALUES(7,'Ninoska','Zambrano',19,'medicina','2026-02-15');
INSERT INTO  estudiantes VALUES(8,'Gabriela','Peralta',20,'enfermeria','2026-01-16');
INSERT INTO  estudiantes VALUES(9,'Andrius','Burgos',23,'criminalistica','2026-01-17');
INSERT INTO  estudiantes VALUES(10,'Andres','Lopez',18,'banco','2026-04-18');
INSERT INTO  estudiantes VALUES(11,'Gabriela','Rivera',23,'leguas','2026-05-19');
INSERT INTO  estudiantes VALUES(12,'Nicolas','Rivera',16,'ciberseguridad','2026-02-20');
INSERT INTO  estudiantes VALUES(13,'Valeria','Rivera',24,'terapia','2026-01-21');
INSERT INTO  estudiantes VALUES(14,'Rosita','Martillo',30,'psicologia','2026-03-22');
INSERT INTO  estudiantes VALUES(15,'Cristina','Martines',35,'enfermeria','2026-02-23');

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