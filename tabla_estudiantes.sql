
create table estudiantes(
	id_estudiante INT,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	edad INT,
	curso VARCHAR(50),
	fecha_registro VARCHAR(10),

	constraint estudiantes_pk primary key(id_estudiante)
	
)