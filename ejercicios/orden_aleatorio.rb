# Escribe un programa que permita al usuario ingresar una lista de nombres y los mezcle de forma aleatoria.
# El programa deberá preguntar primero cuál es el número de personas que se quiere ingresar.
# Luego le va preguntando por el nombre de cada persona y las va almacenando en un arreglo.
# Al final muestra la lista de personas ordenadas de forma aleatoria.


print 'Ingrese un número: '
num = gets.chomp.to_i


def requests_name
  print 'Ingrese un nombre: '
  gets.chomp
end

array = []
num.times do
  array << requests_name
  # puts array
end

print "Nombres #{array.shuffle}"




