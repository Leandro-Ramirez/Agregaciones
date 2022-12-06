create database CineMrk

use CineMrk

Create Table Estado
(
IdEstado Int Identity (1,1) Not Null,
Dscrip Varchar (50) Not Null,
Constraint Fk_Estado Primary Key (IdEstado)
)

Create Table Sala
(
IdSala Int Identity (1,1) Not Null,
Dscrip Varchar(50) Not Null,
Asientos Int Not Null,
IdEstado Int Not Null,
Constraint fk_Sala Primary Key (IdSala),
Constraint fk_Sala_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table Pelicula
(
IdPelicula Int Identity (1,1) Not Null,
Titulo Varchar(50) Not Null,
Duracion Time Not Null,
Genero Varchar(50) Not Null,
Clasificacion Varchar(50) Not Null,
Formato Varchar(40) Not Null,
IdEstado Int Not Null,
Constraint fk_Pelicula Primary Key (IdPelicula),
Constraint fk_Pelicula_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table Asiento
(
IdAsiento Int Identity (1,1) Not Null,
No_Asiento Int Not Null,
IdSala Int Not Null,
IdEstado Int Not Null,
Constraint fk_Asiento Primary Key (IdAsiento),
Constraint fk_Asiento_Sala foreign key(IdSala) references Sala(IdSala),
Constraint fk_Asiento_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table cliente
(
IdCliente Int Identity (1,1) Not Null,
Nombre Varchar(50) Not Null,
Apellido Varchar(50) Not Null,
Dni Char(8) Null,
Constraint fk_Cliente Primary Key (IdCliente)
)

Create Table Cartelera
(
IdCartelera Int Identity (1,1) Not Null,
IdPelicula Int Not Null,
IdSala Int Not Null,
HorarioInicio Time Not Null,
HorarioFin Time Not Null,
Fecha Date Not Null,
IdEstado Int Not Null,
Constraint fk_Cartelera Primary Key (IdCartelera),
Constraint fk_Cartelera_Pelicula foreign key(IdPelicula) references Pelicula(IdPelicula),
Constraint fk_Cartelera_Sala foreign key(IdSala) references Sala(IdSala),
Constraint fk_Cartelera_Estado foreign key(IdEstado) references Estado(IdEstado),
)

Create Table RegistroAsiento
(
IdRAsiento Int Identity (1,1) Not Null,
Idcartelera Int Not Null,
NroAsiento Int Not Null,
Constraint fk_RAsiento Primary Key (IdRAsiento),
Constraint fk_RAsienot_Cartelera foreign key(IdCartelera) references Cartelera(idCartelera)
)

Create Table AsientoCliente
(
IdAcliente Int Identity (1,1) Not Null,
IdRAsiento Int Not Null,
IdCliente Int Not Null,
Constraint fk_ACliente Primary Key (IdACliente),
Constraint fk_ACliente_RCliente foreign key (IdRAsiento) references RegistroAsiento(IdRAsiento),
Constraint fk_ACliente_Cliente foreign key(IdCliente) references Cliente(IdCliente)
)


Create Table Empleado
(
IdEmpleado Int Identity (1,1) Not Null,
Nombre Varchar(50) Not Null,
Apellido Varchar(50) Not Null,
IdEstado Int Not Null,
Constraint fk_Empleado Primary Key (IdEmpleado),
Constraint fk_Empleado_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table Ticket
(
IdTicket Int Identity (1,1) Not Null,
Tipo Varchar(80) Not Null,
Dscrip Varchar(200) Not Null,
Precio Decimal(10,2) Not Null,
IdEstado Int Not Null,
Constraint fk_Ticket Primary Key (IdTicket),
Constraint fk_Ticket_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table Venta
(
IdVenta Int Identity (1,1) Not Null,
IdCliente Int Not Null,
IdCartelera Int Not Null,
IdEmpleado Int Not Null,
Fecha Date Not Null,
Asientos Varchar(50) Not Null,
TPago Varchar(50) Not Null,
Promocion Varchar(80) Not Null,
Descuento Decimal(10,2) Not Null,
IdEstado Int Not Null,
Constraint fk_Venta Primary Key (IdVenta),
Constraint fk_Venta_Cliente foreign key(IdCliente) references Cliente(IdCliente),
Constraint fk_Venta_Cartelera foreign key(IdCartelera) references Cartelera(IdCartelera),
Constraint fk_Venta_Empleado foreign key (IdEmpleado) references Empleado(IdEmpleado),
Constraint fk_Venta_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table DetalleVenta
(
IdDVenta Int Identity (1,1) Not Null,
IdVenta Int Not Null,
Dscrip Varchar(100) Not Null,
Cantidad Int Not Null,
Precio Decimal(10,2) Not Null,
Constraint fk_DVenta Primary Key (IdDVEnta),
Constraint fk_DVenta_Venta foreign key(IdVenta) references Venta(IdVenta)
)

Create Table Promocion
(
IdPromocion Int Identity (1,1) Not Null,
Nombre Varchar(80) Not Null,
Descuento Decimal(10,2) Not Null,
IdEstado Int Not Null,
BaseTicket Bit Not Null,
Constraint fk_Promocion Primary Key (IdPromocion),
Constraint fk_Promocion_Estado foreign key(IdEstado) references Estado(IdEstado)
)

Create Table ProGrPromocion
(
IdPromocion Int Identity (1,1) Not Null,
FECHA Date Not Null,
PROMOCION Varchar(80) Not Null,
IDESTADO Int Not Null,
Constraint PK_PPromocion Primary Key (IdPromocion),
Constraint FK_PPromocion_Estado Foreign Key (IDESTADO) References ESTADO(IDESTADO)
)

Insert Into Estado Values ('Activo')
Insert Into Estado Values ('Inactivo')
Insert Into Estado Values ('Ocupado')
Insert Into Estado Values ('Libre')
Insert Into Estado Values ('Cancelado')

Insert Into Sala Values ('SALA 1',14,4);
Insert Into Sala Values ('SALA 2',14,4);

INSERT INTO PELICULA VALUES ('Cars2 1','01:30:00','ACCION','APTO PARA TODOS','3D',null,1);

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

INSERT INTO CLIENTE VALUES ('Evelyn','Perez','88888888');

INSERT INTO CARTELERA VALUES (1,1,'18:00:00','19:30:00',CURRENT_TIMESTAMP,1);

INSERT INTO EMPLEADO VALUES ('JOSE','HERNANDEZ',CURRENT_TIMESTAMP,1);

INSERT INTO TICKET VALUES ('ENTRADA GENERAL','ENTRADA PARA LAS PERSONAS MAYORES DE 18 ANIOS',10,1);
INSERT INTO TICKET VALUES ('ENTRADA NINOS','ENTRADA PARA LOS NINOS',5,1);

INSERT INTO PROMOCION VALUES ('PROMOCION 3X2',1.0,1,1);
INSERT INTO PROMOCION VALUES ('DESCUENTO 30%',0.3,0,1);

CREATE PROCEDURE SP_PROGRAMAR_PELICULA
(
@IDPELICULA INT,
@DURACION INT,
@IDSALA INT,
@HORAINICIO TIME,
@HORAFIN TIME
) 
AS
DECLARE @ULTIMODIA INT,
@UDIA DATE,
@DIAPROGRAMA DATE,
@CONTADOR INT=1
BEGIN 
 SET @ULTIMODIA=(SELECT 7-( DATEDIFF(day,0,GETDATE())%7+1));
 SET @UDIA=(SELECT DATEADD(day,@ULTIMODIA,GETDATE()))
 SET @DIAPROGRAMA=GETDATE();
 WHILE (@CONTADOR<=@DURACION)
 BEGIN  
   WHILE (@DIAPROGRAMA<=@UDIA)
  BEGIN  
   INSERT INTO CARTELERA VALUES (@IDPELICULA,@IDSALA,@HORAINICIO,@HORAFIN,@DIAPROGRAMA,1);
   SET @DIAPROGRAMA=(SELECT DATEADD(day,1,@DIAPROGRAMA));
     END
  SET @UDIA=(SELECT DATEADD(day,7,@UDIA));
    SET @CONTADOR=@CONTADOR+1; 
 END  
END

CREATE PROCEDURE [dbo].[SP_VENTA]
(
@IDCLIENTE INT,
@IDCARTELERA INT,
@IDEMPLEADO INT,
@TPAGO VARCHAR(50),
@XMLDOC TEXT
)
AS
DECLARE @DOC INT,
@IDVENTA INT,
@IDRASIENTO INT,
@DESCT DECIMAL(19,2)
BEGIN 
 BEGIN TRY
  BEGIN TRANSACTION 
  EXEC sp_xml_preparedocument @DOC OUTPUT, @XMLDOC;
   DECLARE @promoTEMP TABLE
   (
   id int identity(1,1),
   descuento decimal(10,2) DEFAULT 0,
   baseticket bit DEFAULT 0
   ); 
    IF (SELECT COUNT(IDPPROMOCION) from PROGRPROMOCION where CONVERT(VARCHAR,FECHA,111)=CONVERT(VARCHAR,GETDATE(),111))>0
     INSERT INTO @promoTEMP SELECT p.DESCUENTO,p.BASETICKET 
     from PROGRPROMOCION pg inner join PROMOCION p 
     on p.IDPROMOCION=pg.IDPROMOCION WHERE pg.FECHA=CONVERT(VARCHAR,GETDATE(),111);
     
    SET @DESCT =(SELECT  descuento from @promoTEMP);
    INSERT INTO VENTA 
    SELECT @IDCLIENTE,@IDCARTELERA,@IDEMPLEADO,GETDATE(),ASIENTOS,@TPAGO,PROMOCION,@DESCT,1 FROM OPENXML(@DOC,N'/ROOT/VENTA') 
    WITH (ASIENTOS VARCHAR(20),TPAGO VARCHAR(50),PROMOCION VARCHAR(80)) 
    SELECT @IDVENTA=@@IDENTITY;

    IF @@ERROR<>0
     ROLLBACK
    ELSE

    INSERT INTO DETALLEVENTA 
    SELECT @IDVENTA,DESCRIPCION,CANTIDAD,PRECIO FROM OPENXML(@DOC,N'/ROOT/VENTA/ITEM')
    WITH (DESCRIPCION VARCHAR(100),CANTIDAD INT,PRECIO DECIMAL(10,2));

     IF @@ERROR<>0
     ROLLBACK
     ELSE
      
      INSERT INTO REGISTROASIENTO 
      SELECT @IDVENTA,@IDCARTELERA,NROASIENTO FROM OPENXML(@DOC,N'/ROOT/ASIENTO')
      WITH ( NROASIENTO INT);

    COMMIT
 END TRY
 BEGIN CATCH
  IF @@TRANCOUNT > 0
   ROLLBACK
 END CATCH
END

CREATE PROCEDURE SP_PROGRAMAR_PROMO
(
@DURACION INT,
@NOMPROMOCION VARCHAR(80),
@IDPROMOCION INT
)
AS
DECLARE @ULTIMODIA INT,
@UDIA DATE,
@DIAPROGRAMA DATE,
@CONTADOR INT=1
BEGIN
SET @ULTIMODIA=(SELECT 7-( DATEDIFF(day,0,GETDATE())%7+1));
SET @UDIA=(SELECT DATEADD(day,@ULTIMODIA,GETDATE()))
SET @DIAPROGRAMA=GETDATE();
WHILE (@CONTADOR<=@DURACION)
BEGIN
WHILE (@DIAPROGRAMA<=@UDIA)
BEGIN
INSERT INTO PROGRPROMOCION VALUES (GETDATE(),@NOMPROMOCION,@IDPROMOCION,1);
SET @DIAPROGRAMA=(SELECT DATEADD(day,1,@DIAPROGRAMA));
END
SET @UDIA=(SELECT DATEADD(day,7,@UDIA));
SET @CONTADOR=@CONTADOR+1;
END
END

CREATE PROCEDURE SP_PROGRAMACION_XFECHA
(
@FECHAINI DATE,@FECHAFIN DATE
)
AS
BEGIN
SELECT c.IDCARTELERA,p.TITULO,s.DESCRIPCION,c.HORAINICIO,c.HORAFIN,c.FECHA,e.DESCRIPCION as 'estado' from CARTELERA c 
inner join PELICULA p on p.IDPELICULA=c.IDPELICULA
inner join sala s on s.IDSALA=c.IDSALA
inner join ESTADO e on e.IDESTADO=c.IDESTADO
where c.FECHA Between @FECHAINI and @FECHAFIN;
END

CREATE PROCEDURE SP_REPORTE_VCLIENTE
(
@CODCLIENTE INT
)
AS
BEGIN
SELECT V.IDVENTA,V.FECHA,C.NOMBRE+' '+C.APELLIDO AS CLIENTE,R.HORAINICIO,R.HORAFIN,P.TITULO AS PELICULA,D.NOMBRE+' '+D.APELLIDO as 'empleado',v.FECHA,v.ASIENTOS,v.TPAGO,v.PROMOCION,v.DESCUENTO,E.DESCRIPCION 
FROM VENTA V
INNER JOIN CARTELERA R ON R.IDCARTELERA = V.IDCARTELERA
INNER JOIN ESTADO E ON E.IDESTADO=R.IDESTADO
INNER JOIN CLIENTE C ON C.IDCLIENTE=V.IDCLIENTE
INNER JOIN PELICULA P ON P.IDPELICULA = R.IDPELICULA
INNER JOIN EMPLEADO D ON D.IDEMPLEADO=V.IDEMPLEADO
WHERE V.IDCLIENTE=@CODCLIENTE;
END

CREATE PROCEDURE SP_REPORTE_CARTELERA
(
@DURACION INT
)
AS
DECLARE @SEMANAS INT=@DURACION*7;
DECLARE @SPELICULA DATE=GETDATE()+@SEMANAS;
BEGIN
SELECT F.IDCARTELERA,F.FECHA,F.HORAINICIO,F.HORAFIN,P.TITULO,S.DESCRIPCION
FROM CARTELERA F
INNER JOIN PELICULA P ON P.IDPELICULA=F.IDPELICULA
INNER JOIN SALA S ON S.IDSALA=F.IDSALA
WHERE F.FECHA BETWEEN GETDATE() AND @SPELICULA;
END

CREATE TRIGGER T_VENTAASIENTO 
ON REGISTROASIENTO
AFTER INSERT 
as
BEGIN
INSERT INTO ASIENTOCLIENTE select i.IDRASIENTO,v.IDCLIENTE from inserted i 
inner join VENTA v on v.IDVENTA=i.IDVENTA;
UPDATE ASIENTO SET IDESTADO=3  FROM inserted i where ASIENTO.IDASIENTO =i.NROASIENTO;
END