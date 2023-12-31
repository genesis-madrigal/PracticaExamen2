
CREATE DATABASE PracticaExamen2
GO

USE PracticaExamen2
GO

CREATE TABLE PIEZAS
(
	Codigo int identity(1, 1) PRIMARY KEY,
	Nombre nvarchar(100) NOT NULL
)
GO

CREATE TABLE PROVEEDORES
(
	Id char(4) PRIMARY KEY,
	Nombre nvarchar(100) NOT NULL
)
GO

CREATE TABLE SUMINISTRO
(
	codigoPieza int,
	idProveedor char(4),
	Precio float default 0,
	CONSTRAINT fk_codigoPieza FOREIGN KEY(codigoPieza) REFERENCES PIEZAS(Codigo),
	CONSTRAINT fk_idProveedor FOREIGN KEY(idProveedor) REFERENCES PROVEEDORES(Id)
)
GO

INSERT INTO PIEZAS VALUES ('Tornillo'), ('Clavo'), ('Grapa')
GO

INSERT INTO PROVEEDORES VALUES ('1234', '3M'), ('2345', 'Segex'), ('3456', 'Griffon'), ('4567', 'General Electric')
GO

INSERT INTO SUMINISTRO VALUES (1, '1234', 1000), (3, '4567', 4500)
GO

SELECT * FROM PIEZAS
SELECT * FROM PROVEEDORES
SELECT * FROM SUMINISTRO


/*DBCC CHECKIDENT ('PIEZAS', RESEED, 0);*/

SELECT Nombre FROM PIEZAS

SELECT * FROM PROVEEDORES

SELECT Nombre FROM SUMINISTRO INNER JOIN PROVEEDORES ON SUMINISTRO.idProveedor = PROVEEDORES.Id WHERE SUMINISTRO.codigoPieza = 1

UPDATE SUMINISTRO SET Precio = (precio * 0.5)

DELETE FROM SUMINISTRO WHERE Precio < 100

SELECT Nombre FROM Suministro INNER JOIN PIEZAS ON SUMINISTRO.codigoPieza = PIEZAS.codigo



