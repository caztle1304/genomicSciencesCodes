'''NAME
        9-DeLaCruzAngel-Euler.py
VERSION
        1.0
AUTHOR
        Angel Adrian De la Cruz Castillo <angeldc@lcg.unam.mx>
DESCRIPTION
      Programa que calcula soluciones de ecuaciones diferenciales usando el metodo de Euler
CATEGORY
       Calculadora de soluciones de ecuaciones diferenciales
USAGE
        EL usuario ingresa su ecuacion inicial despejada en terminos dy/dx, x0, y0, la X solucion y el ancho de las bandas a utilizar
ARGUMENTS
  N/A
DICCIONARIO DE VARIABLES
ecuacionInicial: ecuacion inicial introducida por el usuario a partir de la cual se calculara la solucion
equisCero: x0 introducida por el usuario
yeCero: y0 introducida por el usuario
equisSolucion: la X para la cual se requiere la solucion
h: ancho de las bandas a utilizar para calcular la solucion
yeEne: aproximacion yn de la solucion a la ecuacion
equisEne: valor inicial de X a tomar en cuenta para el calculo de Yn+1
contador: variable contadora auxiliar para imprimir las aproximaciones de Yn
contador2: ayuda a hacer los ciclos for cuntas veces sea necesario
yeEneMasUno: aproximacion de la solucion Yn+1

'''
from math import *
from sympy import *
from decimal import *

# Establece x como simbolo

x = symbols("x")

# Establece y como simbolo

y = symbols("y")

print("Este programa calcula soluciones a ecuaciones diferenciales usando el metodo de Euler\n")

print("Escribe tu ecuacion inicial en el formato dy/dx = ecuacion\n")

ecuacionInicial = input()

# Convierte la cadena a una expresion

ecuacionInicial = sympify(ecuacionInicial)

print("Escribe tu x0")

equisCero = input()

equisCero = Decimal(equisCero)

print("Escribe tu y0")

yeCero = input()

yeCero = sympify(yeCero)

print("Escribe la x para la cual quieres la solucion")

equisSolucion = input()

equisSolucion = Decimal(equisSolucion)

print("Escribe el ancho de banda h")

h = input()

h = Decimal(h)

# Se le asigna el valor y0 a yn para iniciar el ciclo

yeEne = yeCero

# Se le asigna el valor x0 a xn para iniciar el ciclo

equisEne = sympify(equisCero)

contador = 0

#Se aplica la formula en el range para determinar el numero de veces que se repite el ciclo

repeticiones = int(((equisSolucion - equisCero)/h))

for contador2 in range(1, repeticiones + 1):

    contador = contador + 1

    yeEneMasUno = ecuacionInicial.subs(x, equisEne).subs(y, yeEne)

    yeEneMasUno = yeEneMasUno.evalf()

    yeEneMasUno = yeEne + h * yeEneMasUno

    yeEne = yeEneMasUno

    equisEne = equisEne + h

    print(f"Y {contador} es {yeEne}")

print(f"La solucion para tu ecuacion con la x dada es {yeEneMasUno.evalf()}")    