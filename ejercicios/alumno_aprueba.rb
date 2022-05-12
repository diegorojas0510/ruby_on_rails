print "Ingresa tu nombre: " #permite ingresar el nombre
name = gets.chomp #permite capturar el nombre
p "Hola #{name}" #interpola la variable nombre y la imprime 

def calculaPromedio(c1,c2,c3,c4,c5)
    suma = c1 + c2 + c3 + c4 + c5;
    promedio = suma / 5
    return promedio
end

def obtenerResultado(promedio)
   if (promedio > 13)
    return "Aprobo"
   else
    return "Reprobo"
   end   
end

c1 = 18
c2 = 16
c3 = 14
c4 = 19
c5 = 17

promedio = calculaPromedio(c1,c2,c3,c4,c5)
puts "El Alumno #{obtenerResultado(promedio)}"


