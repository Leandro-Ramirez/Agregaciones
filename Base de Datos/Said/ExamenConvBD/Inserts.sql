use ConvICine

INSERT INTO ESTADO VALUES ('Activo');
INSERT INTO ESTADO VALUES ('Inactivo');
INSERT INTO ESTADO VALUES ('Fuera de Servicio momentaneamente');
INSERT INTO ESTADO VALUES ('libre');
INSERT INTO ESTADO VALUES ('Realizado');
INSERT INTO ESTADO VALUES ('Cancelada');

select * from ESTADO

--Insert en la tabla Sala
INSERT INTO SALA VALUES ('SALA 1',25,4);
INSERT INTO SALA VALUES ('SALA 2',25,4);
INSERT INTO SALA VALUES ('SALA 3',25,4);
INSERT INTO SALA VALUES ('SALA 4',25,4);
INSERT INTO SALA VALUES ('SALA 5',25,4);
INSERT INTO SALA VALUES ('SALA 6',25,4);
INSERT INTO SALA VALUES ('SALA 7',25,4);
INSERT INTO SALA VALUES ('SALA 8',25,4);

select * from SALA

--Insert en la tabla Pelicula
INSERT INTO PELICULA VALUES ('THE MOVIE 1','01:30:00','ACCION','APTO PARA TODOS','3D',1);
INSERT INTO PELICULA VALUES ('Avatar 2','02:30:00','ACCION','Clasificacion R','3D & 2D',1);

select * from PELICULA

---------------------------------------------------------------
------------------------Asientos-------------------------------
---------------------------------------------------------------
-- SALA 1
INSERT INTO ASIENTO VALUES (1,1,1);
INSERT INTO ASIENTO VALUES (2,1,1);
INSERT INTO ASIENTO VALUES (3,1,1);
INSERT INTO ASIENTO VALUES (4,1,1);
INSERT INTO ASIENTO VALUES (5,1,1);
INSERT INTO ASIENTO VALUES (6,1,1);
INSERT INTO ASIENTO VALUES (7,1,1);
INSERT INTO ASIENTO VALUES (8,1,1);
INSERT INTO ASIENTO VALUES (9,1,1);
INSERT INTO ASIENTO VALUES (10,1,1);
INSERT INTO ASIENTO VALUES (11,1,1);
INSERT INTO ASIENTO VALUES (12,1,1);
INSERT INTO ASIENTO VALUES (13,1,1);
INSERT INTO ASIENTO VALUES (14,1,1);
INSERT INTO ASIENTO VALUES (15,1,1);
INSERT INTO ASIENTO VALUES (16,1,1);
INSERT INTO ASIENTO VALUES (17,1,1);
INSERT INTO ASIENTO VALUES (18,1,1);
INSERT INTO ASIENTO VALUES (19,1,1);
INSERT INTO ASIENTO VALUES (20,1,1);
INSERT INTO ASIENTO VALUES (21,1,1);
INSERT INTO ASIENTO VALUES (22,1,1);
INSERT INTO ASIENTO VALUES (23,1,1);
INSERT INTO ASIENTO VALUES (24,1,1);
INSERT INTO ASIENTO VALUES (25,1,1);

select * from ASIENTO

-- SALA 2
INSERT INTO ASIENTO VALUES (1,2,1);
INSERT INTO ASIENTO VALUES (2,2,1);
INSERT INTO ASIENTO VALUES (3,2,1);
INSERT INTO ASIENTO VALUES (4,2,1);
INSERT INTO ASIENTO VALUES (5,2,1);
INSERT INTO ASIENTO VALUES (6,2,1);
INSERT INTO ASIENTO VALUES (7,2,1);
INSERT INTO ASIENTO VALUES (8,2,1);
INSERT INTO ASIENTO VALUES (9,2,1);
INSERT INTO ASIENTO VALUES (10,2,1);
INSERT INTO ASIENTO VALUES (11,2,1);
INSERT INTO ASIENTO VALUES (12,2,1);
INSERT INTO ASIENTO VALUES (13,2,1);
INSERT INTO ASIENTO VALUES (14,2,1);
INSERT INTO ASIENTO VALUES (15,2,1);
INSERT INTO ASIENTO VALUES (16,2,1);
INSERT INTO ASIENTO VALUES (17,2,1);
INSERT INTO ASIENTO VALUES (18,2,1);
INSERT INTO ASIENTO VALUES (19,2,1);
INSERT INTO ASIENTO VALUES (20,2,1);
INSERT INTO ASIENTO VALUES (21,2,1);
INSERT INTO ASIENTO VALUES (22,2,1);
INSERT INTO ASIENTO VALUES (23,2,1);
INSERT INTO ASIENTO VALUES (24,2,1);
INSERT INTO ASIENTO VALUES (25,2,1);

-- SALA 3
INSERT INTO ASIENTO VALUES (1,3,1);
INSERT INTO ASIENTO VALUES (2,3,1);
INSERT INTO ASIENTO VALUES (3,3,1);
INSERT INTO ASIENTO VALUES (4,3,1);
INSERT INTO ASIENTO VALUES (5,3,1);
INSERT INTO ASIENTO VALUES (6,3,1);
INSERT INTO ASIENTO VALUES (7,3,1);
INSERT INTO ASIENTO VALUES (8,3,1);
INSERT INTO ASIENTO VALUES (9,3,1);
INSERT INTO ASIENTO VALUES (10,3,1);
INSERT INTO ASIENTO VALUES (11,3,1);
INSERT INTO ASIENTO VALUES (12,3,1);
INSERT INTO ASIENTO VALUES (13,3,1);
INSERT INTO ASIENTO VALUES (14,3,1);
INSERT INTO ASIENTO VALUES (15,3,1);
INSERT INTO ASIENTO VALUES (16,3,1);
INSERT INTO ASIENTO VALUES (17,3,1);
INSERT INTO ASIENTO VALUES (18,3,1);
INSERT INTO ASIENTO VALUES (19,3,1);
INSERT INTO ASIENTO VALUES (20,3,1);
INSERT INTO ASIENTO VALUES (21,3,1);
INSERT INTO ASIENTO VALUES (22,3,1);
INSERT INTO ASIENTO VALUES (23,3,1);
INSERT INTO ASIENTO VALUES (24,3,1);
INSERT INTO ASIENTO VALUES (25,3,1);

-- SALA 4
INSERT INTO ASIENTO VALUES (1,4,1);
INSERT INTO ASIENTO VALUES (2,4,1);
INSERT INTO ASIENTO VALUES (3,4,1);
INSERT INTO ASIENTO VALUES (4,4,1);
INSERT INTO ASIENTO VALUES (5,4,1);
INSERT INTO ASIENTO VALUES (6,4,1);
INSERT INTO ASIENTO VALUES (7,4,1);
INSERT INTO ASIENTO VALUES (8,4,1);
INSERT INTO ASIENTO VALUES (9,4,1);
INSERT INTO ASIENTO VALUES (10,4,1);
INSERT INTO ASIENTO VALUES (11,4,1);
INSERT INTO ASIENTO VALUES (12,4,1);
INSERT INTO ASIENTO VALUES (13,4,1);
INSERT INTO ASIENTO VALUES (14,4,1);
INSERT INTO ASIENTO VALUES (15,4,1);
INSERT INTO ASIENTO VALUES (16,4,1);
INSERT INTO ASIENTO VALUES (17,4,1);
INSERT INTO ASIENTO VALUES (18,4,1);
INSERT INTO ASIENTO VALUES (19,4,1);
INSERT INTO ASIENTO VALUES (20,4,1);
INSERT INTO ASIENTO VALUES (21,4,1);
INSERT INTO ASIENTO VALUES (22,4,1);
INSERT INTO ASIENTO VALUES (23,4,1);
INSERT INTO ASIENTO VALUES (24,4,1);
INSERT INTO ASIENTO VALUES (25,4,1);

-- SALA 5
INSERT INTO ASIENTO VALUES (1,5,1);
INSERT INTO ASIENTO VALUES (2,5,1);
INSERT INTO ASIENTO VALUES (3,5,1);
INSERT INTO ASIENTO VALUES (4,5,1);
INSERT INTO ASIENTO VALUES (5,5,1);
INSERT INTO ASIENTO VALUES (6,5,1);
INSERT INTO ASIENTO VALUES (7,5,1);
INSERT INTO ASIENTO VALUES (8,5,1);
INSERT INTO ASIENTO VALUES (9,5,1);
INSERT INTO ASIENTO VALUES (10,5,1);
INSERT INTO ASIENTO VALUES (11,5,1);
INSERT INTO ASIENTO VALUES (12,5,1);
INSERT INTO ASIENTO VALUES (13,5,1);
INSERT INTO ASIENTO VALUES (14,5,1);
INSERT INTO ASIENTO VALUES (15,5,1);
INSERT INTO ASIENTO VALUES (16,5,1);
INSERT INTO ASIENTO VALUES (17,5,1);
INSERT INTO ASIENTO VALUES (18,5,1);
INSERT INTO ASIENTO VALUES (19,5,1);
INSERT INTO ASIENTO VALUES (20,5,1);
INSERT INTO ASIENTO VALUES (21,5,1);
INSERT INTO ASIENTO VALUES (22,5,1);
INSERT INTO ASIENTO VALUES (23,5,1);
INSERT INTO ASIENTO VALUES (24,5,1);
INSERT INTO ASIENTO VALUES (25,5,1);

-- SALA 6
INSERT INTO ASIENTO VALUES (1,6,1);
INSERT INTO ASIENTO VALUES (2,6,1);
INSERT INTO ASIENTO VALUES (3,6,1);
INSERT INTO ASIENTO VALUES (4,6,1);
INSERT INTO ASIENTO VALUES (5,6,1);
INSERT INTO ASIENTO VALUES (6,6,1);
INSERT INTO ASIENTO VALUES (7,6,1);
INSERT INTO ASIENTO VALUES (8,6,1);
INSERT INTO ASIENTO VALUES (9,6,1);
INSERT INTO ASIENTO VALUES (10,6,1);
INSERT INTO ASIENTO VALUES (11,6,1);
INSERT INTO ASIENTO VALUES (12,6,1);
INSERT INTO ASIENTO VALUES (13,6,1);
INSERT INTO ASIENTO VALUES (14,6,1);
INSERT INTO ASIENTO VALUES (15,6,1);
INSERT INTO ASIENTO VALUES (16,6,1);
INSERT INTO ASIENTO VALUES (17,6,1);
INSERT INTO ASIENTO VALUES (18,6,1);
INSERT INTO ASIENTO VALUES (19,6,1);
INSERT INTO ASIENTO VALUES (20,6,1);
INSERT INTO ASIENTO VALUES (21,6,1);
INSERT INTO ASIENTO VALUES (22,6,1);
INSERT INTO ASIENTO VALUES (23,6,1);
INSERT INTO ASIENTO VALUES (24,6,1);
INSERT INTO ASIENTO VALUES (25,6,1);

-- SALA 7
INSERT INTO ASIENTO VALUES (1,7,1);
INSERT INTO ASIENTO VALUES (2,7,1);
INSERT INTO ASIENTO VALUES (3,7,1);
INSERT INTO ASIENTO VALUES (4,7,1);
INSERT INTO ASIENTO VALUES (5,7,1);
INSERT INTO ASIENTO VALUES (6,7,1);
INSERT INTO ASIENTO VALUES (7,7,1);
INSERT INTO ASIENTO VALUES (8,7,1);
INSERT INTO ASIENTO VALUES (9,7,1);
INSERT INTO ASIENTO VALUES (10,7,1);
INSERT INTO ASIENTO VALUES (11,7,1);
INSERT INTO ASIENTO VALUES (12,7,1);
INSERT INTO ASIENTO VALUES (13,7,1);
INSERT INTO ASIENTO VALUES (14,7,1);
INSERT INTO ASIENTO VALUES (15,7,1);
INSERT INTO ASIENTO VALUES (16,7,1);
INSERT INTO ASIENTO VALUES (17,7,1);
INSERT INTO ASIENTO VALUES (18,7,1);
INSERT INTO ASIENTO VALUES (19,7,1);
INSERT INTO ASIENTO VALUES (20,7,1);
INSERT INTO ASIENTO VALUES (21,7,1);
INSERT INTO ASIENTO VALUES (22,7,1);
INSERT INTO ASIENTO VALUES (23,7,1);
INSERT INTO ASIENTO VALUES (24,7,1);
INSERT INTO ASIENTO VALUES (25,7,1);

-- SALA VIP
INSERT INTO ASIENTO VALUES (1,8,1);
INSERT INTO ASIENTO VALUES (2,8,1);
INSERT INTO ASIENTO VALUES (3,8,1);
INSERT INTO ASIENTO VALUES (4,8,1);
INSERT INTO ASIENTO VALUES (5,8,1);
INSERT INTO ASIENTO VALUES (6,8,1);
INSERT INTO ASIENTO VALUES (7,8,1);
INSERT INTO ASIENTO VALUES (8,8,1);
INSERT INTO ASIENTO VALUES (9,8,1);
INSERT INTO ASIENTO VALUES (10,8,1);
INSERT INTO ASIENTO VALUES (11,8,1);
INSERT INTO ASIENTO VALUES (12,8,1);
INSERT INTO ASIENTO VALUES (13,8,1);
INSERT INTO ASIENTO VALUES (14,8,1);
INSERT INTO ASIENTO VALUES (15,8,1);
INSERT INTO ASIENTO VALUES (16,8,1);
INSERT INTO ASIENTO VALUES (17,8,1);
INSERT INTO ASIENTO VALUES (18,8,1);
INSERT INTO ASIENTO VALUES (19,8,1);
INSERT INTO ASIENTO VALUES (20,8,1);
INSERT INTO ASIENTO VALUES (21,8,1);
INSERT INTO ASIENTO VALUES (22,8,1);
INSERT INTO ASIENTO VALUES (23,8,1);
INSERT INTO ASIENTO VALUES (24,8,1);
INSERT INTO ASIENTO VALUES (25,8,1);

-- Cliente
INSERT INTO CLIENTE VALUES ('juan','morales','22225454');

--Cartelera
INSERT INTO CARTELERA VALUES (1,1,'18:00:00','19:30:00',CURRENT_TIMESTAMP,1);

--Empleado
INSERT INTO EMPLEADO VALUES ('JOSE','HERNANDEZ',CURRENT_TIMESTAMP,1);

--Tipos de tickert
INSERT INTO TICKET VALUES ('ENTRADA GENERAL','ENTRADA PARA LAS PERSONAS MAYORES DE 18 A�OS',10,1);
INSERT INTO TICKET VALUES ('ENTRADA NI�OS','ENTRADA PARA LOS NINOS',5,1);

--promocion
INSERT INTO PROMOCION VALUES ('PROMOCION 2X1',1.0,1,1);
INSERT INTO PROMOCION VALUES ('DESCUENTO 30%',0.3,0,1);

INSERT INTO PROGRPROMOCION VALUES (CURRENT_TIMESTAMP,'DESCUENTO 30%',2);
INSERT INTO PROGRPROMOCION VALUES (CURRENT_TIMESTAMP,'PROMOCION 3x2',1);

select * from ESTADO
