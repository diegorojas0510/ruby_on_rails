import csv, json
def solucion():
    archivo=open('JandJ.csv')
    x=csv.reader(archivo)
    Date=[]
    Open=[]
    High=[]
    Low=[]
    Close=[]
    Adj_Close=[]
    Volume=[]

    next(x,None)
    for i in x:
        Date.append(i[0])
        Open.append(float(i[1]))
        High.append(float(i[2]))
        Low.append(float(i[3]))
        Close.append(float(i[4]))
        Adj_Close.append(float(i[5]))
        Volume.append(int(i[6]))

    archivo.close()
    n=len(Date)
    alza=[]
    Abs=[]
    for i in range(n):
        resta=Close[i]-Open[i]
        Abs.append(abs(Close[i]-Open[i]))
        if resta>0:
            alza.append('SUBE')
        elif resta<0:
            alza.append('BAJA')
        elif resta==0:
            alza.append('ESTABLE')