# DESCRIPCION BASE DE DATOS
## Diagrama relacional Base de datos:
![image](https://github.com/JuanDavid2020/PruebaTecnicaLiliPink/assets/68674346/baf1602c-b091-4910-92a4-ce4b2081531b)


5.	(T) ¿Explique brevemente para qué se crean índices a las tablas y que tipos de índices existen?
   
***Los índices se crean en las tablas de una base de datos para mejorar el rendimiento de las consultas que reduce la carga en el motor de la base de datos y acelera las operaciones de búsqueda.***
 
6.	(T) ¿Qué diferencia existe entre una clave primaria y un índice?
   
 ***la clave primaria se centra en la garantía de la unicidad y la integridad de los datos, y se utiliza para identificar de forma única cada fila en la tabla. un índice se crea para mejorar el rendimiento de las consultas al permitir un acceso más rápido a los datos***
 
8.	(T) ¿Qué diferencia hay entre DELETE y TRUNCATE?

***DELETE se utiliza para eliminar filas específicas en una tabla, TRUNCATE, se utiliza para eliminar todas las filas de una tabla de manera rápida y sin registro de cambios***

10.	(T) ¿Qué es una vista y explica brevemente si es óptimo usarla o no?

***Es una representación virtual de los datos almacenados en una o más tablas.
el uso de vistas puede ser óptimo en situaciones en las que simplifican el acceso a los datos, mejoran la seguridad o el rendimiento, y proporcionan una capa de abstracción útil.***


 13.	(P) Crear una ETL que permita llenar la tabla anterior y luego que genere un archivo txt
```sql
-- Generar un archivo de texto desde la tabla desnormalizada DECLARE @FilePath NVARCHAR(255) = 'C:\Ruta\Hacia\El\Archivo.txt';

-- Exportar datos a un archivo de texto EXEC xp_cmdshell 'bcp "SELECT * FROM BaseDeDatos.dbo.TablaDesnormalizada" queryout "' + @FilePath + '" -T -c -t,';
```
15.(T) Escribir las posibles necesidades que podría presentar un usuario para realizar una bodega de datos con la base de datos del primer punto. 

+ Análisis de Rendimiento Financiero
+ Segmentación de Clientes
+ Gestión de Cuentas y Productos
+ Evaluación de Riesgos y Préstamos
+ Informe Ejecutivo y Toma de Decisiones
  
16.(T) Que es una tabla de hechos 

***Una tabla de hechos es una estructura de datos que almacena métricas cuantitativas clave y se utiliza  para realizar análisis y tomar decisiones informadas sobre el desempeño de una organización***
 
17.	(P) Como sería un modelo de estrella para esa bodega de datos.

### Tabla de Hechos (Fact Table):
+ IDTransaccion (Clave principal de la tabla de hechos)
+ IDCuenta (Clave foránea a la dimensión de Cuentas)
+ IDCliente (Clave foránea a la dimensión de Clientes)
+ IDProductoFinanciero (Clave foránea a la dimensión de Productos Financieros)
+ IDTiempo (Clave foránea a la dimensión de Tiempo)
+ MontoTransaccion

### Dimensión de Clientes (Customer Dimension):

+ IDCliente (Clave principal)
+ NombreCliente
+ Apellido
+ NumeroIdentificacion
+  Otros detalles de clientes (dirección, teléfono, correo electrónico, etc.)

### Dimensión de Productos Financieros (Financial Products Dimension):

+  IDProductoFinanciero (Clave principal)
+  NombreProducto
+  Descripcion
+  TasaInteres
+  Otros detalles de productos financieros (plazo, monto mínimo, etc.)

### Dimensión de Cuentas (Accounts Dimension):

+  IDCuenta (Clave principal)
+  NumeroCuenta
+  Saldo
+  FechaApertura
+  Otros detalles de cuentas
 
19.	(T) ¿Cómo sería la mejor manera para presentar estos datos al usuario final? 

 ****Por medio de un dashboard seria la manera más optima para representar al cliente el comportamiento del modelo y registros en la base de datos***
 
19.	(T) Para que se usan las medidas en un modelo BI 

***Para realizar:***

   + Seguimiento del Rendimiento
   + Análisis Comparativo
   + (Indicadores Clave de Desempeño)
   + Análisis de Rentabilidad
   + Predicción y Pronóstico
   + Segmentación y Filtrado
   + Monitoreo en Tiempo Real
   + Alertas y Acciones

20.	(T) ¿Que se debería tener en cuenta para hacer un buen modelo BI?

### Objetivos Claros:
Definir claramente los objetivos del modelo BI. ¿Qué quieres lograr con este modelo? ¿Qué preguntas o problemas específicos deseas abordar?
### Requisitos de Datos:
Identificar y documentar los requisitos de datos necesarios para cumplir con los objetivos. ¿Qué datos son esenciales? ¿Dónde se encuentran? ¿Cómo se deben integrar?
### Fuentes de Datos:
Identificar las fuentes de datos de las que obtendrás la información necesaria. Esto puede incluir bases de datos, sistemas de registro, aplicaciones, hojas de cálculo, etc.
### Limpieza y Calidad de Datos:
Asegúrarde que los datos estén limpios, precisos y completos. La calidad de los datos es esencial para tomar decisiones informadas.
### Modelo de Datos:
Diseñar un modelo de datos que refleje la estructura de tu organización y sea fácil de entender. Esto incluye tablas de hechos, tablas de dimensiones y relaciones entre ellas.
### Herramientas de BI:
Seleccionar las herramientas de BI adecuadas para tu organización. Estas herramientas facilitarán la visualización, el análisis y la presentación de datos.
### Seguridad y Privacidad:
Implementar medidas de seguridad y control de acceso para proteger los datos sensibles. Cumple con las regulaciones de privacidad de datos, como el GDPR o HIPAA, si es necesario.
### Integración de Datos:
Asegúrar de que los datos de diferentes fuentes se integren de manera efectiva y se mantengan actualizados. La automatización de la integración de datos puede ser valiosa.
### Diseño de Paneles de Control:
Diseñar paneles de control y cuadros de mando que presenten la información de manera clara y significativa. Los usuarios deben poder acceder fácilmente a los datos relevantes.
### Capacitación de Usuarios:
Proporcionar capacitación a los usuarios y equipos que trabajarán con el modelo BI. Asegúrate de que comprendan cómo utilizar las herramientas y los datos de manera efectiva.
 

 
