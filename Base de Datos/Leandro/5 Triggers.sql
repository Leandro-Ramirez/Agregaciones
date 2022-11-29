USE TareaDeCurso

-- Triggers
-- Compra de Productos
Create Trigger CompraProducto
on DETALLE_COMPRA 
for Insert
As
Set Nocount on
Update PRODUCTO
Set PRODUCTO.Stock = PRODUCTO.Stock + inserted.Cantidad From inserted
inner join PRODUCTO on PRODUCTO.IdProducto = inserted.IdProducto
Go
-- Venta de Productos
Create Trigger VentaProducto
on DETALLE_VENTA 
for Insert
As
Set Nocount on
Update PRODUCTO
Set PRODUCTO.Stock = PRODUCTO.Stock - inserted.Cantidad From inserted
inner join PRODUCTO on PRODUCTO.IdProducto = inserted.IdProducto
Go