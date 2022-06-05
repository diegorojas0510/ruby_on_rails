import numpy as np

def clima(datos):

    #ESCRIBA EN ESTA  SU  DE  PARA HALLAR LAS
    #FECHAS DE LOS  DEL TIEMPO MENCIONADOS EN EL ENUNCIADO.
    #ATÉNGASE AL  DE LOS RETORNOS PUESTOS AL FINAL DE ESTA FUNCIÓN
    Datostiempo = np.array(datos).reshape(108,7)
    ListaDatos = list(Datostiempo)

    ValorMax=max(Datostiempo[:,2])
    ValorMin=min(Datostiempo[:,1])

    premin=min(Datostiempo[:,3])
    premax=max(Datostiempo[:,3])
    diasolmax=max(Datostiempo[:,6])

    fechas_temp_min=[]
    fechas_temp_max=[]
    fechas_precip_min=[]
    fechas_precip_max=[]
    fechas_max_dias_sol=[]
    for i in ListaDatos:
     if i[1]==ValorMin:
        fechas_temp_min.append(i[0])
     if i [2]==ValorMax:
        fechas_temp_max.append(i[0])
     if i[3]==premin:
        fechas_precip_min.append(i[0])
     if i[3]==premax:
        fechas_precip_max.append(i[0])
     if i[6]==diasolmax:
        fechas_max_dias_sol.append(i[0])
    return fechas_temp_min, fechas_temp_max, fechas_precip_min, fechas_precip_max, fechas_max_dias_sol