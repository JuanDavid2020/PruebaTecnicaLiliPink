# PruebaTecnicaLiliPink
Prueba tecnica desarrollador
# Python -Django

## Conceptual  
1.	Explica la diferencia entre una lista y una tupla en Python.
***la principal diferencia entre listas y tuplas es su mutabilidad. Las listas son mutables, mientras que las tuplas son inmutables.*** 
2.	¿Cuál es la diferencia entre un modelo y una vista en el marco de trabajo Django?
***Los modelos se enfocan en la representación y el acceso a la base de datos, mientras que las vistas se enfocan en la lógica de presentación y cómo se responden a las solicitudes HTTP. Django utiliza el enfoque MVC (Modelo-Vista-Controlador), en el que los modelos representan la parte de datos (Modelo), las vistas manejan la presentación y la lógica de negocio (Vista) y los controladores (manejadores de URL) se ocupan de enrutar las solicitudes a las vistas apropiadas.***
3.	Describe qué es la recursión en programación y proporciona un ejemplo en Python.
***La recursión en programación es un concepto que se refiere a la capacidad de una función o método para llamarse a sí mismo para resolver un problema. En lugar de resolver un problema directamente, la recursión divide el problema en instancias más pequeñas y similares del mismo problema y las resuelve de manera recursiva. Cada llamada recursiva se realiza con datos más pequeños, y esta subdivisión continúa hasta que se alcanza un caso base en el que el problema se resuelve directamente sin más llamadas recursivas.***
```python
  def suma_enteros(n):
      if n == 1:
          return 1
      else:
          return n + suma_enteros(n - 1)
n = 5
resultado = suma_enteros(n)
print(f"La suma de los enteros desde 1 hasta {n} es {resultado}")
```
## Practico

1. Escribe una función en Python que calcule el factorial de un número entero no negativo.
```python
```
2. En un proyecto de Django, crea una vista que muestre la fecha y hora actuales en una
plantilla HTML.
```python
```
3. Escribe una función en Python que cuente la cantidad de palabras en una cadena de texto.
```python
```
4. Escribe una función en Python que lea y muestre los primeros 5 registros de los datos de
https://www.kaggle.com/datasets/tawfikelmetwally/employee-dataset
```python
```
5. Escriba una función en Python que reciba como parámetro la columna de city de conjunto
de datos anteriormente cargado y realice un limpiado (remover caracteres especiales,
espacios multiples, ajustar que solo la primera letra del nombre esté en mayuscula y si hay
nulos reemplazarlos con “sin dato” ).
```python
```
6. Reemplace la columna del conjunto de datos con la limpia y exporte el conjunto de datos
con formato .csv
```python
```
## AWS Glue, Athena y S3 

1.	¿Cuál es la función principal de AWS Glue en una arquitectura de procesamiento de datos en la nube? 
2.	¿Cuál es el objetivo principal de Apache Spark en el procesamiento de datos? 
3.	¿Qué son las transformaciones en Apache Spark y por qué son importantes en el procesamiento de datos? 
4.	Imagina que tienes datos almacenados en un bucket de AWS S3 en formato CSV. Describe los pasos que seguirías para usar AWS Glue para realizar una transformación de datos y cargar los resultados en una tabla de AWS Athena. Proporciona una breve descripción de cada paso. 
