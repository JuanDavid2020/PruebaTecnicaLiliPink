#!/usr/bin/env python
# coding: utf-8

# In[5]:


def sumaEnteros(n):
      if n == 1:
          return 1
      else:
          return n + sumaEnteros(n - 1)


# In[6]:


n = 5
resultado = sumaEnteros(n)
print(f"La suma de los enteros desde 1 hasta {n} es {resultado}")


# In[7]:


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


# In[8]:


def contarPalabras(cadena):
    palabras = cadena.split()
    return len(palabras)
texto = "Esta es una cadena de ejemplo para contar palabras."
cantidad_palabras = contarPalabras(texto)
print(f"La cantidad de palabras en el texto es: {cantidad_palabras}")

