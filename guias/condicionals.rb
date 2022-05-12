# if condition
#     #código cuando esto se cumple
# elsif true
#     #código cuando esto se cumple
# elsif false
#     #código cuando esto se cumple
# else
#     #código cuando esto se cumple
# end

# unless condition
#     #código cuando esto se cumple
# end

# puts "Hola mundo: " if condition# se puede hacer en una linea siempre que sea una sola condición a cumplir

# puts "Hola Mundo: " unless condition #se puede hacer en una linea siempre que sea una sola condición a cumplir

print "Ingresa el código secreto: "
code = gets.chomp

code_is_value = code == "123"

# puts "Muy Bien!" if code_is_value

if code_is_value
    puts "Muy bien!" 
elsif code = "bloquear"
    puts "Sistema Bloqueado" 
else
    puts "Código inválido"
end

# puts "Código invalido" unless code_is_value


print "Ingrese su Nombre: "
name = gets.chomp

#Cumplir cualquiera de las dos condiciones
if code == "123" || name == "Diego"
    puts "Muy Bien!"
elsif code == "amarillo"
    puts"Sistema Dañado"
else
    puts "Código inválido"
end


#Cumplir las dos condiciones
if code == "123" && name == "Diego"
    puts "Muy Bien!"
elsif code == "rojo"
    puts"Sistema Dañado"
else
    puts "Código inválido"
end