Create Database ConvICine
Go

Use ConvICine
Go

Create Table Estado
(
IdEstado Int Identity (1,1) Not Null,
Descripcion Varchar (50) Not Null,
Constraint Pk_Estado Primary Key (IdEstado)
)
Go

Create Table Sala
(
IdSala Int  Identity (1,1) Not Null,
Descripcion Varchar (50) Not Null,
Asientos Int Not Null,
IdEstado Int Not Null,
Constraint Pk_Sala Primary Key (IdSala),
Constraint Fk_Sala_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table Cliente
(
IdCliente Int Identity (1,1) Not Null,
Nombre Varchar (50) Not Null,
Apellido Varchar (50) Not Null,
DNI Char (8) Null,
Constraint Pk_Cliente Primary Key (IdCliente)
)
go

Create Table PELICULA
(
IdPelicula Int Identity (1,1) Not Null,
Titulo Varchar (50) Not Null,
Duracion Time Not Null,
Genero Varchar (50) Not Null,
Clasificacion Varchar (50) Not Null,
Formato Varchar (40) Not Null,
IdEstado Int Not Null,
Constraint Pk_Pelicula Primary Key (IdPelicula),
Constraint Fk_Pelicula_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table Asiento
(
IdAsiento Int Identity (1,1) Not Null,
NumAsiento Int Not Null,
IdSala Int Not Null,
Constraint Pk_Asiento Primary Key (IdAsiento),
Constraint Fk_Asiento_Sala Foreign Key (IdSala) References Sala(IdSala)
)
Go

Alter Table Asiento Add IdEstado Int Not Null
Go

Alter Table Asiento Add Constraint Fk_Asiento_Estado Foreign Key (IdEstado) References Estado(IdEstado)
Go

Create Table Cartelera
(
IdCartelera Int Identity (1,1) Not Null,
IdPelicula Int Not Null,
IdSala Int Not Null,
HoraInicio Time Not Null,
HoraFin Time Not Null,
Fecha Date Not Null,
IdEstado Int Not Null,
Constraint PK_Cartelera Primary Key (IdCartelera),
Constraint FK_Cartelera_Pelicula Foreign Key (IdPelicula) References Pelicula(IdPelicula),
Constraint FK_Cartelera_Sala Foreign Key (IdSala) References Sala(IdSala),
Constraint FK_Cartelera_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table RegistroAsiento
(
IdRegAsiento Int Identity (1,1) Not Null,
IdCartelera Int Not Null,
NumAsiento Int Not Null,
Constraint Pk_RegAsiento Primary Key (IdRegAsiento),
Constraint Fk_RegAsiento_Cartelera Foreign Key (IdCartelera) References Cartelera(IdCartelera)
)
Go

Create Table ASIENTOCLIENTE(

 IdAsiCliente Int Identity (1,1) Not Null,
 IdRegAsiento Int Not Null,
 IdCliente Int Not Null,
 Constraint Pk_AsiCliente Primary Key (IdAsiCliente),
 Constraint Fk_AsiCliente_RegCliente Foreign Key (IdRegAsiento) References RegistroAsiento(IdRegAsiento),
 Constraint Fk_AsiCliente_Cliente Foreign Key (IdCliente) References Cliente(IdCliente)
)
Go

Create Table Empleado
(
IdEmpleado Int Identity (1,1) Not Null,
Nombre Varchar (50) Not Null,
Apellido Varchar (50) Not Null,
FechaContrat Date Not Null,
IdEstado Int Not Null,
Constraint Pk_Empleado Primary Key (IdEmpleado),
Constraint Fk_Empleado_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table Ticket
(
IdTicket Int Identity (1,1) Not Null,
Tipo Varchar (80) Not Null,
Descripcion Varchar (200) Not Null,
Precio DECIMAL(10,2) Not Null,
IdEstado Int Not Null,
Constraint Pk_Ticket Primary Key (IdTicket),
Constraint Fk_Ticket_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table Venta
(
IdVenta Int Identity (1,1) Not Null,
IdCliente Int Not Null,
IdCartelera Int Not Null,
IdEmpleado Int Not Null,
Fecha Date Not Null,
Asientos Varchar (20) Not Null,
TPago Varchar (50) Not Null,
Promocion Varchar (80) Not Null,
Descuento Decimal (10,2) Not Null,
IdEstado Int Not Null,
Constraint Pk_Venta Primary Key (IdVenta),
Constraint Fk_Venta_Cliente Foreign Key (IdCliente) References Cliente(IdCliente),
Constraint Fk_Venta_Cartelera Foreign Key (IdCartelera) References Cartelera(IdCartelera),
Constraint Fk_Venta_Empleado Foreign Key (IdEmpleado) References Empleado(IdEmpleado),
Constraint Fk_Venta_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)
Go

Create Table DetalleVenta
(
IdDetVenta Int Identity (1,1) Not Null,
IdVenta Int Not Null,
Descripcion Varchar (100) Not Null,
Cantidad Int Not Null,
Precio Decimal (10,2) Not Null,
Constraint PK_DetVenta Primary Key (IdDetVenta),
Constraint FK_DetVenta_Venta Foreign Key (IdVenta) References Venta(IdVenta)
)
Go

Create Table Promocion
(
IdPromocion Int Identity (1,1) Not Null,
Nombre Varchar (80) Not Null,
Descuento Decimal (10,2) Not Null,
BaseTicket Bit Not Null,
IdEstado Int Not Null,
Constraint PK_Promocion Primary Key (IdPromocion),
Constraint FK_Promocion_Estado Foreign Key (IdEstado) References Estado(IdEstado),
)
Go

Create Table ProGrPromocion
(
IdPPromocion Int Identity (1,1) Not Null,
Fecha Date Not Null,
Promocion Varchar (80) Not Null,
IdEstado Int Not Null,
Constraint PK_PPromocion Primary Key (IdPPromocion),
Constraint FK_PPromocion_Estado Foreign Key (IdEstado) References Estado(IdEstado)
)