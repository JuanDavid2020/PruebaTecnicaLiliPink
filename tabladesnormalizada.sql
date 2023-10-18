-- Crear una tabla desnormalizada con todos los datos del modelo
CREATE TABLE TablaDesnormalizada
(
    TransaccionID INT PRIMARY KEY,
    ClienteID INT,
    NombreCliente NVARCHAR(255),
    Apellido NVARCHAR(255),
    NumeroIdentificacion NVARCHAR(50),
    IDProductoFinanciero INT,
    NombreProducto NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    TasaInteres DECIMAL(10, 2),
    NumeroCuenta NVARCHAR(50),
    Saldo DECIMAL(10, 2),
    FechaApertura DATE,
    MontoTransaccion DECIMAL(10, 2),
    FechaTransaccion DATETIME,
    TipoTransaccion NVARCHAR(50)
);

-- Llenar la tabla desnormalizada con datos de las tablas originales
INSERT INTO TablaDesnormalizada
SELECT
    T.ID AS TransaccionID,
    C.IDCliente AS ClienteID,
    C.NombreCliente,
    C.Apellido,
    C.NumeroIdentificacion,
    PF.IDProductoFinanciero,
    PF.NombreProducto,
    PF.Descripcion,
    PF.TasaInteres,
    A.NumeroCuenta,
    A.Saldo,
    A.FechaApertura,
    T.MontoTransaccion,
    T.FechaTransaccion,
    T.TipoTransaccion
FROM Transacciones T
INNER JOIN Cuentas A ON T.IDCuenta = A.IDCuenta
INNER JOIN Clientes C ON A.IDCliente = C.IDCliente
INNER JOIN ProductosFinancieros PF ON A.IDProductoFinanciero = PF.IDProductoFinanciero;
