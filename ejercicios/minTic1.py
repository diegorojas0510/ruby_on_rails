def solucion(edad, peso):    
    import math
    peso_gramo = peso * 1000
    objetivo = "x"
    if (edad >= 5 and edad <= 10):
        if (peso < 16): 
            nutricion = 101.9
            peso_ideal = 22000
            objetivo = "A"
        elif (peso > 28): # sobrepeso
            nutricion = -31.04
            peso_ideal = 24000
            objetivo = "B"
        elif (peso >= 16 or peso <= 28): #ideal
            nutricion = 2.6 
            peso_ideal = 28000
            objetivo = "C"
    if (edad > 10 and edad <= 13):
        if (peso < 30): #desnutricion
            nutricion = 101.9 
            peso_ideal = 32000
            objetivo = "A"
        elif (peso > 50): # sobrepeso
            nutricion = -31.04 
            peso_ideal = 43000
            objetivo = "B"
        elif (peso >= 30 or peso <= 50): #ideal
            nutricion = 2.6 
            peso_ideal = 50000
            objetivo = "C"
    if (edad > 13 and edad <= 17):
        if (peso < 51): #desnutricion
            nutricion = 101.9 
            peso_ideal = 56000
            objetivo = "A"
        elif (peso > 63): # sobrepeso
            nutricion = -31.04 
            peso_ideal = 58000
            objetivo = "B"
        elif (peso >= 51 or peso <= 63): #ideal
            nutricion = 2.6 
            peso_ideal = 63000
            objetivo = "C"
        peso_final = peso_ideal - peso_gramo
        peso_final = peso_final /  nutricion 
        peso_final = math.ceil(peso_final)  
        if(objetivo == "A" or objetivo == "B" ):
            print(f"El estado nutricional del paciente es {objetivo} y se requieren {peso_final} dias de dieta para que alcance un peso saludable")
        if(objetivo == "C"):
            print(f"El estado nutricional del paciente es {objetivo} y se requieren {peso_final} dias de dieta para que alcance el peso maximo")
