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
  def sumaEnteros(n):
      if n == 1:
          return 1
      else:
          return n + suma_enteros(n - 1)
n = 5
resultado = sumaEnteros(n)
print(f"La suma de los enteros desde 1 hasta {n} es {resultado}")
```
## Practico

1. Escribe una función en Python que calcule el factorial de un número entero no negativo.
```python
def factorial(n):
    if n < 0:
        return "No se puede calcular el factorial de un número negativo."
    if n == 0:
        return 1

    resultado = 1
    for i in range(1, n + 1):
        resultado *= i

    return resultado
numero = 5
resultado = factorial(numero)
print(f"El factorial de {numero} es {resultado}")

```
2. En un proyecto de Django, crea una vista que muestre la fecha y hora actuales en una
plantilla HTML.

***Codigo python de la vista***
```python
   from django.shortcuts import render
from datetime import datetime

def mostrar_fecha_hora(request):
    fecha_hora_actual = datetime.now()
    return render(request, 'mi_template.html', {'fecha_hora_actual': fecha_hora_actual})
```
***Codigo HTML para definir la plantilla del proyecto***
```HTML
<!DOCTYPE html>
<html>
<head>
    <title>Fecha y Hora Actuales</title>
</head>
<body>
    <h1>Fecha y Hora Actuales:</h1>
    <p>{{ fecha_hora_actual }}</p>
</body>
</html>
```
***Codigo python para configurar las URLs***
```python
from django.urls import path
from . import views

urlpatterns = [
    path('mostrar_fecha_hora/', views.mostrar_fecha_hora, name='mostrar_fecha_hora'),
]
```

3. Escribe una función en Python que cuente la cantidad de palabras en una cadena de texto.
```python
def contarPalabras(cadena):
    palabras = cadena.split()
    return len(palabras)
texto = "Esta es una cadena de ejemplo para contar palabras."
cantidad_palabras = contarPalabras(texto)
print(f"La cantidad de palabras en el texto es: {cantidad_palabras}")

```
4. Escribe una función en Python que lea y muestre los primeros 5 registros de los datos de
https://www.kaggle.com/datasets/tawfikelmetwally/employee-dataset

***Se descarga el archivo .csv,posteriormente se carga  ruta donde esta guardado se coloca la ruta  que se utilizo para probar en google colab**
```python
import pandas as pd

def mostrar_primeros_registros_csv(archivo_csv):
    # Cargar los datos en un DataFrame de pandas
    data = pd.read_csv(archivo_csv)

    # Muestra los primeros 5 registros
    print(data.head(5))

# Ruta al archivo CSV descomprimido
archivo_csv = "/content/Employee.csv"

# Llama a la función para mostrar los primeros 5 registros
mostrar_primeros_registros_csv(archivo_csv)
```

5. Escriba una función en Python que reciba como parámetro la columna de city de conjunto
de datos anteriormente cargado y realice un limpiado (remover caracteres especiales,
espacios multiples, ajustar que solo la primera letra del nombre esté en mayuscula y si hay
nulos reemplazarlos con “sin dato” ).

```python
import pandas as pd
def limpiarColumnaCity(dataframe):
    def limpiarCiudad(ciudad):
        if isinstance(ciudad, str):
            ciudad = ' '.join(ciudad.split())
            ciudad = ciudad.capitalize()
            return ciudad
        elif pd.isna(ciudad):
            return "sin dato"
        else:
            return ciudad
    dataframe['City'] = dataframe['City'].apply(limpiar_ciudad)
    return dataframe
```
6. Reemplace la columna del conjunto de datos con la limpia y exporte el conjunto de datos
con formato .csv

```python
df = limpiarColumnaCity(df)
df_original['City'] = df['City']
df_original.to_csv('conjuntolimpio.csv', index=False) 
print(df_original)
```
## AWS Glue, Athena y S3 

1.	¿Cuál es la función principal de AWS Glue en una arquitectura de procesamiento de datos en la nube? 

***La función principal de AWS Glue en una arquitectura de procesamiento de datos en la nube es facilitar y automatizar el proceso de extracción, transformación y carga (ETL) de datos. AWS Glue se utiliza para preparar y transformar datos de diversas fuentes antes de cargarlos en almacenes de datos o data lakes en la nube, lo que permite a las organizaciones analizar y consultar sus datos de manera efectiva***

2.	¿Cuál es el objetivo principal de Apache Spark en el procesamiento de datos? 

***el objetivo principal de Apache Spark es acelerar y simplificar el procesamiento de datos a gran escala, permitiendo a las organizaciones realizar análisis y procesamiento de datos de manera eficiente y escalable en entornos distribuidos***

3.	¿Qué son las transformaciones en Apache Spark y por qué son importantes en el procesamiento de datos? 

4.	Imagina que tienes datos almacenados en un bucket de AWS S3 en formato CSV. Describe los pasos que seguirías para usar AWS Glue para realizar una transformación de datos y cargar los resultados en una tabla de AWS Athena. Proporciona una breve descripción de cada paso. 
