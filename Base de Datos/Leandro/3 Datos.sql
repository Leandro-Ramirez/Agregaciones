USE TareaDeCurso

GO
insert into TIPO_PERSONA(IdTipoPersona, Descripcion) values
(1,'Administrador'),
(2,'Empleado'),
(3,'Cliente')


go


insert into PERSONA(documento,nombre,clave,IdTipoPersona) values
('Admin','Admin','123',1),
('Empleado','Empleado','123',2)

GO

insert into TIENDA(IdTienda,Documento,RazonSocial,Correo,Telefono) 
VALUES (1,'0','POR DEFINIR','DEFAULT@GMAIL.COM','101010')
