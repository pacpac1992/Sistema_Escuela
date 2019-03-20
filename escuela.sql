CREATE DATABASE escuela;

USE escuela;

CREATE TABLE grados(
	id int(10) not null auto_increment primary key,
	nombre varchar(50),
	tipo varchar(50),
	inicio date,
	fin date,
	status enum('Activo','Inactivo')
)ENGINE=INNODB;

CREATE TABLE calendario(
	id int(10) not null auto_increment primary key,
	dia int(2) not null,
	mes int(2) not null,
	anio int(2) not null,
	evento varchar(255),
	duracion varchar(5)
)engine = innodb;

CREATE TABLE grupos(
	id int(10) not null auto_increment primary key,
	letra varchar(2) not null,
	turno enum("Matutino","Vespertino"),
	id_asesor int(10),
	id_grado int(10)
)ENGINE=INNODB;


CREATE TABLE materias(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	clave varchar(20) not null,
	id_maestro int(10)
)ENGINE=INNODB;

CREATE TABLE documentos(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	tipo enum("Original","Copia") not null,
	descripcion text
)ENGINE=INNODB;

CREATE TABLE documentos_alumnos(
	id int(10) not null auto_increment primary key,
	id_alumno int(10) not null,
	id_documento int(10) not null,
	status enum("Entregado","Pendiente","Extraviado") not null,
	fecha date
)ENGINE=INNODB;

CREATE TABLE trabajos(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	tipo enum("Tarea","Trabajo") not null,
	status enum("Entregado","Pendiente","No entregado"),
	calificacion decimal(2.1),
	fecha_inicio date,
	fecha_fin date
)ENGINE=INNODB;

CREATE TABLE asistencia(
	id int(10) not null auto_increment primary key,
	id_alumno int(10) not null,
	fecha date,
	status enum("Presente","Ausente","Permiso"),
	id_grupo int(10)
)ENGINE=INNODB;


CREATE TABLE paraescola(
	id int(10) not null auto_increment primary key,
	nombre varchar(200) not null,
	clave varchar(10),
	id_asesor int(10),
	id_alumno int(10)
)ENGINE=INNODB;

CREATE TABLE horarios(
	id int(10) not null auto_increment primary key,
	dia enum("Lunes","Martes","Miercoles","Jueves","Viernes"),
	id_materia int(10) not null,
	id_asesor int(10) not null,
	id_grupo int(10) not null,
	hora_inicio varchar(10),
	hora_fin varchar(10)
)ENGINE=INNODB;



-- Pendientes 

CREATE TABLE alumnos(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	apellido_paterno varchar(100) not null,
	apellido_materno varchar(100) not null,
	genero enum("Masculino","Femenino"),
	fecha_nacimiento date,
	domicilio text,
	estado varchar(200),
	municipio varchar(255),
	localidad varchar(255),
	codigopostal int(6),
	matricula int(10)
)ENGINE=INNODB;

CREATE TABLE profesor(
	id int(10) not null auto_increment primary key,
	nombre varchar(100) not null,
	apellido_paterno varchar(100) not null,
	apellido_materno varchar(100) not null,
	genero enum("Masculino","Femenino"),
	fecha_nacimiento date,
	domicilio text,
	profesion varchar(100)
)ENGINE=INNODB;
