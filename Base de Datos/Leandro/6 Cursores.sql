-- Cursores
-- Cursor PERSONA
Declare 
@IdP int,
@documento varchar(15),
@nombre varchar(50),
@direccion varchar(50),
@telefono varchar(50),
@clave varchar(50),
@Idtp int,
@Estado bit,
@fechacreacion datetime
Declare personas cursor Local
for Select IdPersona, Documento, Nombre, Direccion, Telefono, Clave, IdTipoPersona, Estado, FechaCreacion from personas For UPDATE
Open personas
fetch personas 
into @IdP, @documento, @nombre, @direccion, @telefono, @clave, @Idtp, @Estado, @fechacreacion
While(@@fetch_status=0)
 begin
 UPDATE PERSONA set Nombre = @nombre + '(Modificacion)'
 Where current of personas
  fetch personas
  into @IdP, @documento, @nombre, @direccion, @telefono, @clave, @Idtp, @Estado, @fechacreacion
 end
close personas
deallocate personas

-- Cursor PRODUCTO
Declare 
@IdPr int,
@CodPr varchar(20),
@NomPr varchar(30),
@DesPr varchar(30),
@IdCatPr int,
@StockPr int,
@PreComPr decimal,
@PreVenPr decimal,
@EstadoPr bit,
@FechaCreacionPr datetime
Declare productos cursor Local
for Select IdProducto, Codigo, Nombre, Descripcion, IdCategoria, Stock, PrecioCompra, PrecioVenta, Estado, FechaCreacion from productos For UPDATE
Open productos
fetch productos 
into @IdP, @documento, @nombre, @direccion, @telefono, @clave, @Idtp, @Estado, @fechacreacion
While(@@fetch_status=0)
 begin
 UPDATE PRODUCTO set Nombre = @NomPr + '(Modificacion)'
 Where current of productos
  fetch productos
  into @IdPr, @CodPr, @NomPr, @DesPr, @IdCatPr, @StockPr, @PreComPr, @PreVenPr, @EstadoPr, @FechaCreacionPr
 end
close productos
deallocate productos

-- Cursor COMPRA
Declare 
@IdComp int,
@IdPer int,
@IdPro int,
@MontoT decimal(10,2),
@TipDoc varchar(50),
@NumDoc varchar(50),
@FechaRegistro datetime
Declare Compras cursor Local
for Select IdCompra, IdPersona, IdProveedor, MontoTotal, TipoDocumento, NumeroDocumento, FechaRegistro from Compras For UPDATE
Open Compras
fetch Compras 
into @IdComp, @IdPer, @IdPro, @MontoT, @TipDoc, @NumDoc, @FechaRegistro
While(@@fetch_status=0)
 begin
 UPDATE COMPRA set IdCompra = @IdComp + '(Modificacion)'
 Where current of Compras
  fetch Compras
  into @IdComp, @IdPer, @IdPro, @MontoT, @TipDoc, @NumDoc, @FechaRegistro
 end
close Compras
deallocate Compras

-- Cursor VENTA
Declare 
@IdVen int,
@TipDocVen varchar(50),
@NumDocVen varchar(100),
@IdUs int,
@DocCli varchar(50),
@NomCli varchar(50),
@TotPag decimal(10,2),
@PagCon decimal(10,2),
@Cambio decimal(10,2),
@FechaRegistroVen datetime
Declare Ventas cursor Local
for Select IdVenta, TipoDocumento, NumeroDocumento, IdUsuario, DocumentoCliente, NombreCliente, TotalPagar, PagoCon, Cambio, FechaRegistro from Ventas For UPDATE
Open Ventas
fetch Ventas 
into @IdVen, @TipDocVen, @NumDocVen, @IdUs, @DocCli, @NomCli, @TotPag, @PagCon, @Cambio, @FechaRegistroVen
While(@@fetch_status=0)
 begin
 UPDATE VENTA set NombreCliente = @NomCli + '(Modificacion)'
 Where current of Ventas
  fetch Ventas
  into @IdVen, @TipDocVen, @NumDocVen, @IdUs, @DocCli, @NomCli, @TotPag, @PagCon, @Cambio, @FechaRegistroVen
 end
close Ventas
deallocate Ventas