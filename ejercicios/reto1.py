def solucion(edad, peso):
    #ACÁ INICIA LA FUNCIÓN SOLUCIÓN (En este espacio debes entregar tu solución)
    edad = int(input("Indicar la Edad del paciente"))
    peso = float(input("Indicar el peso del paciente en kilogramos"))
    aporteCarbohidrato = 60.1/1000
    aporteProteina = 30.5/1000
    aporteVerdura = 24.4/1000
    estadoNutricional = 0
    peso_inicial = 0
    dias = 0
    objetivo = 0
    maximo = 0
    if edad >= 5 and edad <= 10:
        if peso_inicial < 16:
            estadoNutricional = "A"
            objetivo = 22
    elif peso_inicial > 28:
        estadoNutricional = "B"
        objetivo = 24
    if not peso_inicial < 16 and not peso_inicial > 28:
        estadoNutricional = "C"
        maximo = 28
    if edad > 10 and edad <= 13:
        if peso_inicial < 30:
            estadoNutricional = "A"
            objetivo = 32
    elif peso_inicial > 50:
        estadoNutricional = "B"
        objetivo = 43
    if not peso_inicial < 30 and not peso_inicial > 50:
        estadoNutricional = "C"
        maximo = 50
    if edad > 13 and edad <= 17:
        if peso_inicial < 51:
            estadoNutricional = "A"
            objetivo = 56
    elif peso_inicial > 63:
        estadoNutricional = "B"
        objetivo = 58
    if not peso_inicial < 51 and not peso_inicial > 63:
        estadoNutricional = "C"
        maximo = 63
    if estadoNutricional == "A":
        dieta = 2 * aporteCarbohidrato + aporteProteina + 2 * aporteVerdura
        peso_final = peso_inicial
    while peso_final < objetivo:
        peso_final = peso_final + dieta
        dias += 1
    if estadoNutricional == "B":
        dieta = 0.6 * aporteCarbohidrato + aporteProteina + 4 * aporteVerdura
        peso_final = peso_inicial
    while peso_final > objetivo:
        peso_final = peso_final + dieta
        dias += 1
    if estadoNutricional == "C":
        dieta = 0.5 * aporteCarbohidrato + 0.7 * aporteProteina + 2 * aporteVerdura
        peso_final = peso_inicial
    while peso < maximo:
      if estadoNutricional == "A" or estadoNutricional == "B":
        print(f"El estado nutricional del paciente es {estadoNutricional} y se requieren {dias} de dieta para que alcance un peso saludable")
      elif estadoNutricional == "C":
        print(f"El estado nutricional del paciente es {estadoNutricional} y se requieren {dias} de dieta para que alcance el peso máximo")
    #ACÁ TERMINA LA FUNCIÓN SOLUCIÓN