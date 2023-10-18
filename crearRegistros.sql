
INSERT INTO cliente (nombre, apellido, telefono, correoElectronico, direccion, numeroIdentificacion, tipoIdentificacion)
VALUES	('Juan David', 'Leguizamon', '3102940398', 'jleguizamonl1@ucentral.edu.co', 'calle 23f 96g 82', '1016095638', 'CC'),
		('Juan Carlos', 'Ramirez ', '3134235112', 'juancarlos@gmail.com', 'Modelia', '1040098645', 'CC'),
		('Maria Camila ', 'Rodriguez ', '3145967856', 'mariacamila@gmail.com', 'Ciudad salitre', '1031145621', 'CC');

INSERT INTO productosFinancieros (NombreProducto,descripcion,tasaDeInteres)
VALUES ('Cuenta de Ahorro','Cuenta de ahorro AFC',3),
	   ('Cuenta Corriente','Cuenta corriente de uso general',2),
	   ('CDT','Certificados de Depósito',12);

INSERT INTO cuentas (numeroCuenta,idCliente,idProductoFinanciero,saldo,fechaApertura)
VALUES	('48841016095638',2,1,1500000,'2023-10-18'),
		('48841016095638',3,1,1500000,'2023-10-18'),
		('48841016095638',4,1,1500000,'2023-10-18');

INSERT INTO transacciones (idCuenta,tipoTransaccion,descripcion)
VALUES	(2,'ABONO','ABONO POR TRANSFERENCIA CUENTA EXTERNA'),
		(3,'ABONO','ABONO POR TRANSFERENCIA CUENTA EXTERNA'),
		(4,'ABONO','ABONO POR TRANSFERENCIA CUENTA EXTERNA');

