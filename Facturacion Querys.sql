USE Facturacion

SELECT * FROM PRODUCTOS
SELECT * FROM Clientes

/* --------------- PRIMER PROCESAMIENTO ALMACENADO, RESTAR EXISTENCIA A LA CANTIDAD EN STOCK --------------- */

CREATE PROC RESTAR_EXISTENCIA
	@CodigoProducto as int,
	@Cantidad as int
AS
	UPDATE Productos SET Stock=Stock-@Cantidad
	WHERE ID_Producto=@CodigoProducto

EXEC RESTAR_EXISTENCIA 1100, 100


/* --------------- SEGUNDO PROCESAMIENTO ALMACENADO, SUMAR EXISTENCIA A LA CANTIDAD EN STOCK --------------- */

CREATE PROC SUMAR_EXISTENCIA
	@CodigoProducto as int,
	@Cantidad as int
AS
	UPDATE Productos SET Stock=Stock+@Cantidad
	WHERE ID_Producto=@CodigoProducto

EXEC SUMAR_EXISTENCIA 1100, 100




/* -------------------------------------------------------------------------- */
/* --------------- TERCER PROCESAMIENTO ALMACENADO, CLIENTES ---------------- */
/* -------------------------------------------------------------------------- */

/* INSERTAR CLIENTE */
CREATE PROC INSERTAR_CLIENTE(
	@ClaveCliente int,
	@Nombre nvarchar(50),
	@ApellidoPaterno nvarchar(50),
	@ApellidoMaterno nvarchar(50),
	@Tel nvarchar(50),
	@CorreoE nvarchar(50),
	@FechaNacimiento date,
	@Profesion nvarchar(50))
AS
BEGIN	
	INSERT INTO	Clientes (ID_Cliente, Nombre_Cliente, Apellido_Paterno, Apellido_Materno, Telefono, Email, Fecha_Nacimiento, Ocupacion)
	VALUES (@ClaveCliente, @Nombre, @ApellidoPaterno, @ApellidoMaterno, @Tel, @CorreoE, @FechaNacimiento, @Profesion)
END 

EXEC INSERTAR_CLIENTE 106,'JUAN','RODRIGUEZ','MARTINEZ','56-12-14-09','juanrod@outlook.com','1986-08-15','VENTAS'


/* ELIMINAR CLIENTE */
CREATE PROC ELIMINAR_CLIENTE(@ClaveCliente int)
AS
BEGIN	
	DELETE FROM Clientes 
	WHERE (ID_Cliente = @ClaveCliente)
END 

EXEC ELIMINAR_CLIENTE 111


/* MOSTRAR CLIENTE */
CREATE PROC MOSTRAR_CLIENTE AS
BEGIN
		SELECT TOP 1000 [ID_Cliente] as ID
			,[Nombre_Cliente] as Nombre
			,[Apellido_Paterno] as Apellido_Paterno
			,[Telefono]
			,[Email]
			,[Ocupacion]
		FROM [Facturacion].[dbo].[Clientes]
END


/* SELECCIONAR CLIENTE */
CREATE PROC SELECCIONAR_CLIENTE(@ClaveCliente int)
AS 
BEGIN
	SELECT ID_Cliente as ID, 
		   Nombre_Cliente as Nombre, 
		   Apellido_Paterno as Apelllido_Paterno, 
		   Telefono, 
		   Email, 
		   Ocupacion 
	FROM Clientes
	WHERE (ID_Cliente = @ClaveCliente)
END

SELECCIONAR_CLIENTE 104


/* MODIFICAR CLIENTE */
CREATE PROC MODIFICAR_CLIENTE(
	@ClaveCliente int,
	@Nombre nvarchar(50),
	@ApellidoPaterno nvarchar(50),
	@ApellidoMaterno nvarchar(50),
	@Tel nvarchar(50),
	@CorreoE nvarchar(50),
	@FechaNacimiento date,
	@Profesion nvarchar(50))
 AS
 BEGIN
    UPDATE Clientes 
	SET ID_Cliente=@ClaveCliente, 
		Nombre_Cliente=@Nombre,
		Apellido_Paterno=@ApellidoPaterno, 
		Apellido_Materno=@ApellidoMaterno, 
		Telefono=@Tel, 
		Email=@CorreoE,
		Fecha_Nacimiento=@FechaNacimiento,
		Ocupacion=@Profesion
	WHERE (ID_Cliente= @ClaveCliente)	
 END

 EXEC MODIFICAR_CLIENTE 118,'XYX','ABC','HJK','56-12-33-90','chabelo@outlook.com','1980-02-23','MEDICO'


/* -------------------------------------------------------------------------- */
/* --------------- CUARTO PROCESAMIENTO ALMACENADO, EMPRESAS ---------------- */
/* -------------------------------------------------------------------------- */

/* INSERTAR EMPRESA */
CREATE PROC INSERTAR_EMPRESA(
	@ClaveEmpresa int,
	@NombreEmpresa nvarchar(50),
	@DireccionEmpresa nvarchar(50),
	@TelefonoEmpresa nvarchar(50),
	@EmailEmpresa nvarchar(50))
AS
BEGIN	
	INSERT INTO	Empresas(ID_Empresa, Nombre_Empresa, Direccion_Empresa, Telefono_Empresa, Email_Empresa)
	VALUES (@ClaveEmpresa, @NombreEmpresa, @DireccionEmpresa, @TelefonoEmpresa, @EmailEmpresa)
END 

EXEC INSERTAR_EMPRESA 215, 'HOSPITAL CENTRAL INSURGENTES', 'Chavez 312', '56-33-78-90', 'hospital-chavista@gmail.com'


/* ELIMINAR EMPRESA */
CREATE PROC ELIMINAR_EMPRESA(@ClaveEmpresa int)
AS
BEGIN	
	DELETE FROM Empresas 
	WHERE (ID_Empresa = @ClaveEmpresa)
END 

EXEC ELIMINAR_EMPRESA 215


/* MOSTRAR EMPRESA */
CREATE PROC MOSTRAR_EMPRESA AS
BEGIN
		SELECT TOP 1000 [ID_Empresa] as ID
			  ,[Nombre_Empresa] as Nombre
			  ,[Direccion_Empresa]
			  ,[Telefono_Empresa]
			  ,[Email_Empresa]
       FROM [Facturacion].[dbo].[Empresas]
END


/* SELECCIONAR EMPRESA */
CREATE PROC SELECCIONAR_EMPRESA (@ClaveEmpresa int)
AS 
BEGIN
	SELECT ID_Empresa as ID, 
		   Nombre_Empresa as Nombre, 
		   Direccion_Empresa, 
		   Telefono_Empresa, 
		   Email_Empresa
	FROM Empresas
	WHERE (ID_Empresa= @ClaveEmpresa)
END


/* MODIFICAR EMPRESA */
CREATE PROC MODIFICAR_EMPRESA(
	@ClaveEmpresa int,
	@NombreEmpresa nvarchar(50),
	@DireccionEmpresa nvarchar(50),
	@TelefonoEmpresa nvarchar(50),
	@EmailEmpresa nvarchar(50))
 AS
 BEGIN
    UPDATE Empresas 
	SET ID_Empresa=@ClaveEmpresa, 
		Nombre_Empresa=@NombreEmpresa,
		Direccion_Empresa=@DireccionEmpresa, 
		Telefono_Empresa=@TelefonoEmpresa, 
		Email_Empresa=@EmailEmpresa
	WHERE (ID_Empresa= @ClaveEmpresa)	
 END

 EXEC MODIFICAR_EMPRESA 212,'HOSPITAL BUENAVISTA','CARMEN 33','23-12-34-67','buenavista@soluciones.com'


/* -------------------------------------------------------------------------- */
/* --------------- QUINTO PROCESAMIENTO ALMACENADO, PRODUCTOS --------------- */
/* -------------------------------------------------------------------------- */

/* INSERTAR PRODUCTO */

CREATE PROC INSERTAR_PRODUCTO(
	@ClaveProducto int,
	@ClaveCategoria int,
	@NombreProducto nvarchar(50),
	@Descripcion nvarchar(200),
	@Existencia int,
	@PrecioUnitaro money)
AS   
BEGIN	
	INSERT INTO	Productos (ID_Producto, ID_Categoria, Nombre_Producto, Descripcion, Stock, PrecioUnitario)
	VALUES (@ClaveProducto, @ClaveCategoria, @NombreProducto, @Descripcion, @Existencia, @PrecioUnitaro)
END 

EXEC INSERTAR_PRODUCTO 1105,900,'ENEMA RECTAL M','Enema rectal formula N','230','280.00'


/* ELIMINAR PRODUCTO */

CREATE PROC ELIMINAR_PRODUCTO(@ClaveProducto int)
AS
BEGIN	
	DELETE FROM Productos 
	WHERE (ID_Producto = @ClaveProducto)
END 

EXEC ELIMINAR_PRODUCTO 1105


/* MOSTRAR PRODUCTO */

CREATE PROC MOSTRAR_PRODUCTO AS
BEGIN
		SELECT TOP 1000 [ID_Producto] as Clave
			  ,[ID_Categoria] as Categoria
			  ,[Nombre_Producto] as Nombre
			  ,[Descripcion] as Descripcion	
			  ,[Stock] as Existencia
			  ,[PrecioUnitario] as Precio
		FROM [Facturacion].[dbo].[Productos]
END

/* SELECCIONAR PRODUCTO */
CREATE PROC SELECCIONAR_PRODUCTO (@ClaveProducto int)
AS 
BEGIN
	SELECT ID_Producto as Clave, 
		   ID_Categoria as Categoria,	
		   Nombre_Producto as Nombre,  
		   Stock as Unidades, 
		   PrecioUnitario as Precio
	FROM Productos
	WHERE (ID_Producto= @ClaveProducto)
END


/* MODIFICAR PRODUCTO */
CREATE PROC MODIFICAR_PRODUCTO(
	@ClaveProducto int,
	@ClaveCategoria int,
	@NombreProducto nvarchar(50),
	@Descripcion nvarchar(200),
	@Existencia int,
	@PrecioUnitaro money)
 AS
 BEGIN
    UPDATE Productos
	SET ID_Producto=@ClaveProducto, 
		ID_Categoria=@ClaveCategoria,
		Nombre_Producto=@NombreProducto,
		Descripcion=@Descripcion, 
		Stock=@Existencia, 
		PrecioUnitario=@PrecioUnitaro
	WHERE (ID_Producto= @ClaveProducto)	
 END

 EXEC MODIFICAR_PRODUCTO 1120, 907,'BOLSA DRENAJE URINARIO','Bolsa cerrada para drenaje urinario',300,220.00


/* -------------------------------------------------------------------------- */
/* --------------- SEXTO PROCESAMIENTO ALMACENADO, CATEGORIAS --------------- */
/* -------------------------------------------------------------------------- */

/* INSERTAR CATEGORIA */

CREATE PROC INSERTAR_CATEGORIA(
	@ClaveCategoria int,
	@NombreCategoria nvarchar(50),
	@DescripcionCategoria nvarchar(50))
AS   
BEGIN	
	INSERT INTO	Categorias (ID_Categoria, Nombre_Categoria, Descripcion_Categoria)
	VALUES (@ClaveCategoria, @NombreCategoria, @DescripcionCategoria)
END 

EXEC INSERTAR_CATEGORIA 908,'XYZ','Enema rectal formula N'


/* ELIMINAR CATEGORIA */

CREATE PROC ELIMINAR_CATEGORIA(@ClaveCategoria int)
AS
BEGIN	
	DELETE FROM Categorias
	WHERE (ID_Categoria = @ClaveCategoria)
END 

EXEC ELIMINAR_CATEGORIA 908


/* MOSTRAR CATEGORIA */

CREATE PROC MOSTRAR_CATEGORIA AS
BEGIN
		SELECT TOP 1000 [ID_Categoria] as ID
			  ,[Nombre_Categoria] as Nombre
			  ,[Descripcion_Categoria] as Descripcion
		FROM [Facturacion].[dbo].[Categorias]
END


/* SELECCIONAR CATEGORIA */
CREATE PROC SELECCIONAR_CATEGORIA (@ClaveCategoria int)
AS 
BEGIN
	SELECT ID_Categoria as Clave, 
		   Nombre_Categoria as Nombre,  
		   Descripcion_Categoria as Descripcion
	FROM Categorias
	WHERE (ID_Categoria= @ClaveCategoria)
END



/* MODIFICAR CATEGORIA */
CREATE PROC MODIFICAR_CATEGORIA(
	@ClaveCategoria int,
	@NombreCategoria nvarchar(50),
	@DescripcionCategoria nvarchar(50))
 AS
 BEGIN
    UPDATE Categorias
	SET ID_Categoria=@ClaveCategoria, 
		Nombre_Categoria=@NombreCategoria,
		Descripcion_Categoria=@DescripcionCategoria
	WHERE (ID_Categoria= @ClaveCategoria)	
 END

 EXEC MODIFICAR_CATEGORIA 907,'BOLSA HOSPITALARIA','Unidades cerradas de plastico hospitalario'


/* ------------------------------------------------------------------------ */
/* -------------- SEPTIMO PROCESAMIENTO ALMACENADO, FACTURAS -------------- */
/* ------------------------------------------------------------------------ */

/* INSERTAR FACTURA */
CREATE PROC INSERTAR_FACTURA(
	@ClaveFactura int,
	@ClaveCliente int,
	@ClaveEmpresa int,
	@Fecha date
	)
AS   
BEGIN	
	INSERT INTO	Facturas(ID_Factura, ID_Cliente, ID_Empresa, Fecha)
	VALUES (@ClaveFactura, @ClaveCliente, @ClaveEmpresa, @Fecha)
END 

EXEC INSERTAR_FACTURA 803, 104, 209, '2016-05-22'

/* ELIMINAR FACTURA */
CREATE PROC ELIMINAR_FACTURA(@ClaveFactura int)
AS
BEGIN	
	DELETE FROM Facturas
	WHERE (ID_Factura = @ClaveFactura)
END 

EXEC ELIMINAR_FACTURA 805

/* MODIFICAR FACTURA */
CREATE PROC MODIFICAR_FACTURA(
	@ClaveFactura int,
	@ClaveCliente int,
	@ClaveEmpresa int,
	@Fecha date)
 AS
 BEGIN
    UPDATE Facturas
	SET ID_Factura=@ClaveFactura, 
		ID_Cliente=@ClaveCliente, 
		ID_Empresa=@ClaveEmpresa, 
		Fecha=@Fecha
	WHERE ( ID_Factura=@ClaveFactura)	
 END

 EXEC MODIFICAR_FACTURA 804,105,209,'2016-04-22'


/* ------------------------------------------------------------------------ */
/* ---------- OCTAVO PROCESAMIENTO ALMACENADO, DETALLE FACTURAS ----------- */
/* ------------------------------------------------------------------------ */

/* INSERTAR DETALLE Y RESTAR EXISTENCIA*/
CREATE PROC INSERTAR_DETALLE(
	@ClaveFactura int,
	@ClaveProducto int,
	@Cantidad int,
	@Iva float,
	@PrecioU money
	)
AS   
BEGIN	
	INSERT INTO	Detalle_Factura(ID_Factura, ID_Producto, Cantidad, Iva, Precio_Unitario)
	VALUES (@ClaveFactura, @ClaveProducto, @Cantidad, @Iva, @PrecioU)
	
	UPDATE Detalle_Factura
	SET Precio_Bruto = (Precio_Unitario * Cantidad)

	UPDATE Detalle_Factura
	SET Precio_Neto = (Precio_Bruto * Iva) + Precio_Bruto

	EXEC RESTAR_EXISTENCIA @ClaveProducto, @Cantidad
END 

EXEC INSERTAR_DETALLE 804, 1100, 10, 0.16, 250

/* MODIFICAR DETALLES Y RESTAR EXISTENCIA */
CREATE PROC MODIFICAR_DETALLE(
	@ClaveFactura int,
	@ClaveProducto int,
	@Cantidad int,
	@CantidadModi int,
	@Iva float,
	@PrecioU money)
 AS
 BEGIN
    UPDATE Detalle_Factura
	SET ID_Factura=@ClaveFactura, 
		ID_Producto=@ClaveProducto, 
		Cantidad=@Cantidad, 
		Iva=@Iva,
		Precio_Unitario=@PrecioU
	WHERE ( ID_Factura=@ClaveFactura)	

	UPDATE Detalle_Factura
	SET Precio_Bruto = (Precio_Unitario * Cantidad)

	UPDATE Detalle_Factura
	SET Precio_Neto = (Precio_Bruto * Iva) + Precio_Bruto

	EXEC SUMAR_EXISTENCIA @ClaveProducto, @CantidadModi
	EXEC RESTAR_EXISTENCIA @ClaveProducto, @Cantidad
 END

 EXEC MODIFICAR_DETALLE 804, 1100, 20, 10, 0.16, 250


 /* ELIMINAR DETALLES Y FACTURA, Y ACTUALIZAR STOCK*/
CREATE PROC ELIMINAR_DET_FACTURAS(@ClaveFactura int)
AS
BEGIN
	UPDATE		Productos
	SET         Stock = Stock + Detalle_Factura.Cantidad
	FROM        Detalle_Factura INNER JOIN
				Productos ON Detalle_Factura.ID_Producto = Productos.ID_Producto
	WHERE       (ID_Factura = @ClaveFactura)

	DELETE FROM Detalle_Factura WHERE (ID_Factura = @ClaveFactura)
	DELETE FROM Facturas		WHERE (ID_Factura = @ClaveFactura)
END 

EXEC ELIMINAR_DET_FACTURAS 806







/* ------------------------------------------------------------------------ */
/* ---------- NOVENO PROCESAMIENTO ALMACENADO, REPORTE FACTURAS ----------- */
/* ------------------------------------------------------------------------ */

/* BUSCAR ESPECIFICO */

CREATE PROC BUSCAR_REPORTE_ESPECIFICO (@ClaveFactura int)
AS
BEGIN
			SELECT  Facturas.ID_Factura			  AS   [Clave Factura],
					(Clientes.Nombre_Cliente + ' ' + Clientes.Apellido_Paterno) 
												  AS   [Nombre Cliente], 
					Empresas.Nombre_Empresa		  AS   Empresa, 
					Categorias.Nombre_Categoria   AS   Categoria,
					Productos.Nombre_Producto	  AS   Producto, 
					Detalle_Factura.Cantidad	  AS   Cantidad,  
					Detalle_Factura.Precio_Neto   AS   Precio,
					Facturas.Fecha				  AS   [Fecha Facturacion]
		
			FROM    Facturas 
					INNER JOIN Clientes           ON   Facturas.ID_Cliente          =  Clientes.ID_Cliente 
					INNER JOIN Detalle_Factura    ON   Facturas.ID_Factura          =  Detalle_Factura.ID_Factura 
					INNER JOIN Empresas           ON   Facturas.ID_Empresa          =  Empresas.ID_Empresa 
					INNER JOIN Productos          ON   Detalle_Factura.ID_Producto  =  Productos.ID_Producto 
					INNER JOIN Categorias         ON   Productos.ID_Categoria       =  Categorias.ID_Categoria
			
			WHERE   (Facturas.ID_Factura= @ClaveFactura)
END


/* BUSCAR TODOS 
   Visualiza todos los reportes de la base de datos	
*/

CREATE PROC BUSCAR_REPORTE_TODOS 
AS
BEGIN
			SELECT  Facturas.ID_Factura			  AS   [Clave Factura],
					(Clientes.Nombre_Cliente + ' ' + Clientes.Apellido_Paterno) 
												  AS   [Nombre Cliente], 
					Empresas.Nombre_Empresa		  AS   Empresa, 
					Categorias.Nombre_Categoria   AS   Categoria,
					Productos.Nombre_Producto	  AS   Producto, 
					Detalle_Factura.Cantidad	  AS   Cantidad,  
					Detalle_Factura.Precio_Neto   AS   Precio,
					Facturas.Fecha				  AS   [Fecha Facturacion]
		
			FROM    Facturas 
					INNER JOIN Clientes           ON   Facturas.ID_Cliente          =  Clientes.ID_Cliente 
					INNER JOIN Detalle_Factura    ON   Facturas.ID_Factura          =  Detalle_Factura.ID_Factura 
					INNER JOIN Empresas           ON   Facturas.ID_Empresa          =  Empresas.ID_Empresa 
					INNER JOIN Productos          ON   Detalle_Factura.ID_Producto  =  Productos.ID_Producto 
					INNER JOIN Categorias         ON   Productos.ID_Categoria       =  Categorias.ID_Categoria
END


/* -------------------------------------------------------------------------- */
/* ------------------------- QUERYS  FACTURACION  --------------------------- */
/* -------------------------------------------------------------------------- */

 /* 1 */	SELECT * FROM Clientes
 /* 2 */	SELECT * FROM Empresas
 /* 3 */	SELECT * FROM Productos
 /* 4 */	SELECT * FROM Facturas
 /* 5 */	SELECT * FROM Detalle_Factura

 /* 6 */	SELECT ID_Cliente as ID, 
				   Nombre_Cliente as Nombre, 
				   Apellido_Paterno as Apelllido_Paterno, 
				   Telefono, 
				   Email, 
				   Ocupacion 
			FROM Clientes
			WHERE (ID_Cliente = 100)

 /* 7 */	SELECT ID_Producto FROM Productos WHERE (ID_Producto = 1100)
 /* 8 */	SELECT ID_Producto, Nombre_Producto FROM Productos WHERE ID_Producto < 1110
 /* 9 */	SELECT ID_Producto, Nombre_Producto FROM Productos WHERE ID_Producto > 1110
 /* 10 */	SELECT ID_Cliente,Nombre_Cliente,Apellido_Paterno,Ocupacion FROM Clientes WHERE Nombre_Cliente like 'J%'


/* ------------------------------------------------------------------------------------------------------------------ */
/* ----------------------------------------- CONSULTAS MULTITABLA --------------------------------------------------- */
/* ------------------------------------------------------------------------------------------------------------------ */

/* Detalle de Factura */

	SELECT  Facturas.ID_Factura           AS   [Clave de la Factura], 
			(Clientes.Nombre_Cliente + ' ' + Clientes.Apellido_Paterno + ' ' + Clientes.Apellido_Materno) 
										  AS   [Nombre del Cliente], 
			Empresas.Nombre_Empresa       AS   Empresa,
			Facturas.Fecha				  AS   [Fecha de Facturacion]

	FROM    Clientes 
			INNER JOIN Facturas			  ON   Clientes.ID_Cliente = Facturas.ID_Cliente 
			INNER JOIN Empresas			  ON   Facturas.ID_Empresa = Empresas.ID_Empresa

/* ------------------------------------------------------------------------------------------------------------------ */
/* Reporte de Factura */

	SELECT  Facturas.ID_Factura			  AS   [Clave de la Factura],
			(Clientes.Nombre_Cliente + ' ' + Clientes.Apellido_Paterno + ' ' + Clientes.Apellido_Materno) 
										  AS   [Nombre del Cliente], 
			Empresas.Nombre_Empresa		  AS   Empresa, 
			Categorias.Nombre_Categoria   AS   Categoria,
			Productos.Nombre_Producto	  AS   Producto, 
			Detalle_Factura.Cantidad	  AS   Cantidad,  
			Detalle_Factura.Precio_Neto   AS   Precio,
			Facturas.Fecha				  AS   [Fecha de Facturacion]
		
	FROM    Facturas 
			INNER JOIN Clientes           ON   Facturas.ID_Cliente          =  Clientes.ID_Cliente 
			INNER JOIN Detalle_Factura    ON   Facturas.ID_Factura          =  Detalle_Factura.ID_Factura 
			INNER JOIN Empresas           ON   Facturas.ID_Empresa          =  Empresas.ID_Empresa 
			INNER JOIN Productos          ON   Detalle_Factura.ID_Producto  =  Productos.ID_Producto 
			INNER JOIN Categorias         ON   Productos.ID_Categoria       =  Categorias.ID_Categoria

	WHERE	Facturas.ID_Factura = 800


* ------------------------------------------------------------------------------------------------------------------ */
/* Detalles de Factura */
UPDATE		Productos
	SET         Stock = Stock + Detalle_Factura.Cantidad
	FROM        Detalle_Factura INNER JOIN
				Productos ON Detalle_Factura.ID_Producto = Productos.ID_Producto
	WHERE       (ID_Factura = @ClaveFactura)



/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
																               /*  F I N  */
/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
/* Falta considerar la cantidad ...


CREATE PROC DETFAC
	@ClaveFactura as int
AS
BEGIN
	UPDATE Detalle_Factura SET Detalle_Factura.Precio_Bruto = Productos.PrecioUnitario
	FROM Productos
	WHERE ID_Factura = 808

	UPDATE Detalle_Factura SET Detalle_Factura.Precio_Neto = (Detalle_Factura.Precio_Bruto * Detalle_Factura.Iva) + Detalle_Factura.Precio_Bruto 
	WHERE ID_Factura = @ClaveFactura	
END	

EXEC DETFAC 808

SELECT * FROM PRODUCTOS
*/