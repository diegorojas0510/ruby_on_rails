#**********************
#Encriptado y desencriptado de frases usando una matriz cuadrada y dos funciones nativas de Python
#**********************
import numpy as np
import random

def encriptado(texto):
    texto2 = texto

    valor = 0 
    while True:
        if pow(valor,2) < len(texto):   
            valor = valor + 1
        else:                           
            relleno = pow(valor,2) - len(texto) 
            break                               

    for i in range(relleno):                    
        texto2 = texto2 + "_"

    clave = []
    mensaje_lista = []                         
    for i in range(len(texto2)):
        entero_letra = ord(texto2[i])          
        mensaje_lista.append(entero_letra)
        clave.append(i)

    random.shuffle(clave)                      

    ceros1 = np.zeros(len(clave))               
    i = 0
    for item in clave:                          
        ceros1[i] = mensaje_lista[item]
        i += 1

    mensaje_array = np.array(mensaje_lista)    
    mensaje_encriptado = mensaje_array.reshape((valor,valor))

    return mensaje_encriptado, clave




def desencriptado(array_encriptado, clave):

    array1 = array_encriptado.flatten()

    ceros2 = np.zeros(len(clave))

    for item in clave:
        ceros2[item] = array1[item]

    ceros2 = ceros2.astype(int)                 

    lista_recuperada = ceros2.tolist()

    lista_mensaje_recuperado = []
    for codigo in lista_recuperada:
        letra = chr(codigo)
        lista_mensaje_recuperado.append(letra)

    recortador = "_"
    while recortador == "_":
        if lista_mensaje_recuperado[len(lista_mensaje_recuperado) - 1] == "_":
            del lista_mensaje_recuperado[len(lista_mensaje_recuperado) - 1]
            recortador = lista_mensaje_recuperado[len(lista_mensaje_recuperado) - 1]
        else:
            break

    texto = ""
    for i in range(len(lista_mensaje_recuperado)):
        texto = texto + lista_mensaje_recuperado[i]

    return texto