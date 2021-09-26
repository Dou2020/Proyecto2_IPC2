CREATE DATABASE `Proyect2` ;
USE Proyect2;

CREATE TABLE Usuario(
nombre VARCHAR(40) NOT NULL,
descripcion VARCHAR(80),
pass VARCHAR(20) NOT NULL,
rol INT NOT NULL, PRIMARY KEY (nombre)
);
CREATE TABLE Caracteristica(
id INT NOT NULL AUTO_INCREMENT,
contenido VARCHAR(40) NOT NULL,
nombre VARCHAR(25) NOT NULL,
nombre_usuario VARCHAR(30) NOT NULL,
PRIMARY KEY(id),CONSTRAINT FK_TO_CUsuario FOREIGN KEY (nombre_usuario) REFERENCES Usuario(nombre)
);
CREATE TABLE Publicidad (
id INT NOT NULL AUTO_INCREMENT,
dias_pago INT NOT NULL,
tipo INT NOT NULL,
anuncio VARCHAR(40) NOT NULL,
fecha DATE NOT NULL,
PRIMARY KEY (id)
);
CREATE TABLE Revista (
nombre VARCHAR(40) NOT NULL,
contenido VARCHAR(40),
costo_dia DOUBLE NOT NULL,
fecha DATE NOT NULL,
precio_suscripcion DOUBLE NOT NULL,
aceptar_me_gusta DOUBLE NOT NULL,
aceptar_comentario DOUBLE NOT NULL,
aceptar_suscriptores DOUBLE NOT NULL,
PRIMARY KEY (nombre)
);
CREATE TABLE Suscrito_Revista(
tipo_pago INT NOT NULL,
nombre_usuario VARCHAR(40),
nombre_revista VARCHAR(40),
CONSTRAINT FK_TO_SUsuario FOREIGN KEY (nombre_usuario) REFERENCES Usuario(nombre),
CONSTRAINT FK_TO_SRevista FOREIGN KEY (nombre_revista) REFERENCES Revista(nombre)
);
CREATE TABLE Etiqueta (
nombre VARCHAR(30) NOT NULL,
nombre_revista VARCHAR(40) NOT NULL,
PRIMARY KEY (nombre), CONSTRAINT FK_TO_RevistaE FOREIGN KEY (nombre_revista) REFERENCES Revista(nombre)
);
CREATE TABLE Categoria (
nombre_revista VARCHAR(30) NOT NULL,
nombre VARCHAR(40) NOT NULL,
PRIMARY KEY (nombre)
);
CREATE TABLE Me_gusta (
id INT NOT NULL AUTO_INCREMENT,
nombre_usuario VARCHAR(40) NOT NULL,
PRIMARY KEY (id),CONSTRAINT FK_TO_UsuarioMg FOREIGN KEY (nombre_usuario) REFERENCES Usuario(nombre)
);
CREATE TABLE Comentario (
id INT NOT NULL AUTO_INCREMENT,
fecha DATE NOT NULL,
contenido VARCHAR(200) NOT NULL,
nombre_usuario VARCHAR(40) NOT NULL,
PRIMARY KEY (id),CONSTRAINT FK_TO_UsuarioC FOREIGN KEY (nombre_usuario) REFERENCES Usuario(nombre)
);
INSERT INTO Usuario VALUES ('admin','12345',1);
INSERT INTO Usuario VALUES ('suscriptor','12345','2');
INSERT INTO Usuario VALUES ('editor','12345','3');

SHOW TABLES;
