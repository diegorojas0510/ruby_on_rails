def solucion(edad, peso):
    #ACÁ INICIA LA FUNCIÓN SOLUCIÓN (En este espacio debes entregar tu solución)
    import math
    a = "x"
    peso_gramo= peso * 1000
    if (edad >= 5 and edad <= 10 ):
        if (peso < 16 ): #desnutricion
            des = 101.9
            p_ideal = 22000
            a  = "A"
        elif (peso > 28): # sobrepeso
            des = -31.04
            p_ideal = 24000
            a = "B"
        elif (peso >= 16 or peso <= 28): #ideal
            des = 2.6
            p_ideal = 28000
            a = "C"
    if (edad > 10 and edad <= 13 ):
        if (peso < 30 ): #desnutricion
            des = 101.9
            p_ideal = 32000
            a  = "A"
        elif (peso > 50):
            des = -31.04
            p_ideal = 43000
            a = "B"
        elif (peso >= 30 or peso <= 50):
            des = 2.6
            p_ideal = 50000
            a = "C"
    if (edad > 13 and edad <= 17 ):
        if (peso < 51 ):
            des = 101.9
            p_ideal = 56000
            a  = "A"
        elif (peso > 63):
            des = -31.04
            p_ideal = 58000
            a = "B"
        elif (peso >= 51 or peso <= 63):
            des = 2.6
            p_ideal = 63000
            a = "C"
    pf = p_ideal - peso_gramo
    pf = pf / des
    pf = math.ceil(pf)
    if( a == "A" or a == "B" ):
        print(f"El estado nutricional del paciente es {a} y se requieren {pf} dias de dieta para que alcance un peso saludable")
    if (a == "C"):
        print(f"El estado nutricional del paciente es {a} y se requieren {pf} dias de dieta para que alcance el peso maximo")
    #ACÁ TERMINA LA FUNCIÓN SOLUCIÓN
solucion[6, 16]