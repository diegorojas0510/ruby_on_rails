#NO BORRAR LAS IMPORTACIONES QUE ENCUENTRAN A CONTINUACIÓN. LA FUNCIÓN QUE VA A 
#COMPLETAR NO REQUERIRÁ DE PARÁMETROS DE ENTRADA

#LOS MÓDULOS csv Y json ESTÁN ADJUNTOS POR DEFECTO EN LAS VERSIONES MÁS RECIENTES 
#DE PYTHON (3.x). ASEGÚRESE DE QUE LA VERSIÓN DE PYTHON EN LA QUE USTED HA ESTADO 
#EJECUTANDO SU PROPUESTA DE SOLUCIÓN CONTIENE DICHO MÓDULO

import csv
import json
def clima():
    
    #A PARTIR DE ACÁ PUEDE ADJUNTAR SU PROPUESTA DE SOLUCIÓN.REMÍTASE AL ENUNCIADO 
    #PARA MÁS DETALLES.
    
    #RECUERDE QUE SU PROPUESTA DEBE ACCEDER A UN ARCHIVO LLAMADO  "data.csv" 
    #(EL ARCHIVO ESTÁ EN ESTA PLATAFORMA), REALIZAR CÁLCULOS EN CADA FILA CON 
    #DOS DATOS ESPECÍFICOS Y LLEVAR LOS RESULTADOS A UN OBJETO JSON QUE CONTENDRÁ 
    #CINCO LISTAS DE DOS PROMEDIOS CADA UNA. ESTE ES EL OBJETO QUE DEBE RETORNAR.
    
    #SU SOLUCIÓN TAMBIÉN DEBE ESTAR EN CAPACIDAD DE CREAR UN ARCHIVO CSV
    #QUE DEBE LLAMARSE "data_nuevo.csv" A PARTIR DE "data.csv" CON LAS 
    #ESPECIFICACIONES INDICADAS EN EL ENUNCIADO
  archivo= open('data.csv')
  datos=csv.reader(archivo)

  id=[]
  location=[]
  temperatura=[]
  presion=[]

  next(datos,None)

  for fila in datos:
      id.append(fila[0])
      location.append(str(fila[1]))
      temperatura.append(int(fila[2]))
      presion.append(int(fila[3]))

  archivo.close()


  temp_loc1=[]
  pres_loc1=[]
  temp_loc2=[]
  pres_loc2=[]
  temp_loc3=[]
  pres_loc3=[]
  temp_loc4=[]
  pres_loc4=[]
  temp_loc5=[]
  pres_loc5=[]

  n=len(id)

  for i in range(n):
      if location[i]=='1':
        temp_loc1.append(temperatura[i])
        pres_loc1.append(presion[i])
      if location[i]=='2':
        temp_loc2.append(temperatura[i])
        pres_loc2.append(presion[i])
      if location[i]=='3':
        temp_loc3.append(temperatura[i])
        pres_loc3.append(presion[i])
      if location[i]=='4':
        temp_loc4.append(temperatura[i])
        pres_loc4.append(presion[i])
      if location[i]=='5':
        temp_loc5.append(temperatura[i])
        pres_loc5.append(presion[i])

  pt_loc1=round(sum(temp_loc1)/len(temp_loc1),1)
  pp_loc1=round(sum(pres_loc1)/len(pres_loc1),1)
  pt_loc2=round(sum(temp_loc2)/len(temp_loc2),1)
  pp_loc2=round(sum(pres_loc2)/len(pres_loc2),1)
  pt_loc3=round(sum(temp_loc3)/len(temp_loc3),1)
  pp_loc3=round(sum(pres_loc3)/len(pres_loc3),1)
  pt_loc4=round(sum(temp_loc4)/len(temp_loc4),1)
  pp_loc4=round(sum(pres_loc4)/len(pres_loc4),1)
  pt_loc5=round(sum(temp_loc5)/len(temp_loc5),1)
  pp_loc5=round(sum(pres_loc5)/len(pres_loc5),1)

  dic={}
  dic['1']=[pt_loc1,pp_loc1]
  dic['2']=[pt_loc2,pp_loc2]
  dic['3']=[pt_loc3,pp_loc3]
  dic['4']=[pt_loc4,pp_loc4]
  dic['5']=[pt_loc5,pp_loc5]

  with open('jason.json', 'w') as file:
      json.dump(dic,file)

  with open('jason.json', 'r') as file:
      objeto=json.load(file)

  datos=json.dumps(objeto)
  print(datos)

  with open('data_nuevo.csv', 'w') as file:
      file. write('id,')
      file. write('location,')
      file. write('temperature,')
      file. write('pressure,')
      file. write('above_avg_temp,,')
      file. write('above_avg_press\n')

  d_temp=[]
  d_pres=[]

  for i in range(n):
        if location[i]=='1':
          if temperatura[i]>pt_loc1:
            d_temp.append('SI')
          elif temperatura[i]>pt_loc1:
            d_temp.append('NO')
          elif temperatura[i]>pt_loc1:
            d_temp.append('IGUAL')

          if temperatura[i]>pt_loc1:
            d_pres.append('SI')
          elif temperatura[i]>pt_loc1:
            d_pres.append('NO')
          elif temperatura[i]>pt_loc1:
            d_pres.append('IGUAL')

        if location[i]=='2':
          if temperatura[i]>pt_loc2:
            d_temp.append('SI')
          elif temperatura[i]>pt_loc2:
            d_temp.append('NO')
          elif temperatura[i]>pt_loc2:
            d_temp.append('IGUAL')

          if temperatura[i]>pt_loc2:
            d_pres.append('SI')
          elif temperatura[i]>pt_loc2:
            d_pres.append('NO')
          elif temperatura[i]>pt_loc2:
            d_pres.append('IGUAL')

        if location[i]=='3':
          if temperatura[i]>pt_loc3:
            d_temp.append('SI')
          elif temperatura[i]>pt_loc3:
            d_temp.append('NO')
          elif temperatura[i]>pt_loc3:
            d_temp.append('IGUAL')

          if temperatura[i]>pt_loc3:
            d_pres.append('SI')
          elif temperatura[i]>pt_loc3:
            d_pres.append('NO')
          elif temperatura[i]>pt_loc3:
            d_pres.append('IGUAL')

        if location[i]=='4':
          if temperatura[i]>pt_loc4:
            d_temp.append('SI')
          elif temperatura[i]>pt_loc4:
            d_temp.append('NO')
          elif temperatura[i]>pt_loc4:
            d_temp.append('IGUAL')

          if temperatura[i]>pt_loc4:
            d_pres.append('SI')
          elif temperatura[i]>pt_loc4:
            d_pres.append('NO')
          elif temperatura[i]>pt_loc4:
            d_pres.append('IGUAL')

        if location[i]=='5':
          if temperatura[i]>pt_loc5:
            d_temp.append('SI')
          elif temperatura[i]>pt_loc5:
            d_temp.append('NO')
          elif temperatura[i]>pt_loc5:
            d_temp.append('IGUAL')

          if temperatura[i]>pt_loc5:
            d_pres.append('SI')
          elif temperatura[i]>pt_loc5:
            d_pres.append('NO')
          elif temperatura[i]>pt_loc5:
            d_pres.append('IGUAL')


  for i in range (n):
        file.write("%s," % id[i])
        file.write("%s," % location[i])
        file.write("%s," % temperatura[i])
        file.write("%s," % presion[i])
        file.write("%s," % d_temp[i])
        file.write("%s," % d_pres[i])

  file.close()
  return datos