# # ¿Cuál es mi edad?
# Escribe un programa para la consola que le pregunte al usuario el año en que nació e imprima su edad actual. Por ejemplo, asumiendo que el año actual es 2020:
# $ ruby edad.rb
# En qué año naciste? 1990
# Tienes 30 años
# Puedes quemar el año actual en el programa aunque un buen ejercicio es buscar cómo se obtiene el año actual.
# Si quieres hacer este ejercicio más interesante intenta mostrar un mensaje "Imposible! Aún no has nacido" si el año es mayor al actual e "Imposible! Nadie tiene esa edad" si la edad es más de 120 años.
# También puedes tener en cuenta el caso en que la persona tenga un año, para que no utilice el plural: "Tienes 1 año" en ves de "Tienes 1 años".

anio_actual = Time.now.year

print 'En que año naciste?: '
anio_nacimento = gets.chomp.to_i

if anio_nacimento == 2021
  anio = anio_actual - anio_nacimento
  puts "Tienes #{anio} año"
elsif anio_nacimento > anio_actual
  puts '!Imposible! Aún no has nacido.'
elsif anio_nacimento < 1900
  puts "Si naciste en: #{anio_nacimento}, !Imposible! nadie tiene esa edad. "
else
  anio = anio_actual - anio_nacimento
  puts "Tienes #{anio} años"
end