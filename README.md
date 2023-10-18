# PruebaTecnicaLiliPink
Ahi dos archivos markdown con cada una de las partes de la prueba

Para la tabla desnormalizada y creacion de la ETL,se deben ejecutar los siguientes comandos por powershell

-- Generar un archivo de texto desde la tabla desnormalizada
DECLARE @FilePath NVARCHAR(255) = 'C:\Ruta\Hacia\El\Archivo.txt';

-- Exportar datos a un archivo de texto
EXEC xp_cmdshell 'bcp "SELECT * FROM BaseDeDatos.dbo.TablaDesnormalizada" queryout "' + @FilePath + '" -T -c -t,';
