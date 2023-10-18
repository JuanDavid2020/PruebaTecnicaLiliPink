CREATE PROCEDURE ObtenerSaldoClienteProducto
    @ClienteID INT,
    @ProductoID INT
AS
BEGIN
    -- Verificar si el cliente y el producto existen
    IF NOT EXISTS (SELECT 1 FROM cliente WHERE id = @ClienteID)
    BEGIN
        PRINT 'El cliente especificado no existe.';
        RETURN;
    END

    IF NOT EXISTS (SELECT 1 FROM productosFinancieros WHERE id= @ProductoID)
    BEGIN
        PRINT 'El producto especificado no existe.';
        RETURN;
    END

    -- Consultar el saldo para el cliente y el producto específico
    SELECT C.saldo
    FROM Cuentas AS C
    WHERE C.idCliente= @ClienteID
    AND C.idProductoFinanciero= @ProductoID;
END