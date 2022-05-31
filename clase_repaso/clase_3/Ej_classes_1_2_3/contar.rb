# Contar elementos
# Escribe un método `contar` que reciba un arreglo y retorne la cantidad de veces que aparece el número 5.
# escribe tu solución acá
# puts contar([1, 5, 5, 1]) # 2
# puts contar([2, 6, "5"]) # 0
# puts contar([]) # 0
# [Ver solución](solutions/contar.rb)
# Si quieres agregarle más dificultad modifica el método para que reciba un argumento adicional y retorne la cantidad
# de veces que aparece ese argumento en el arreglo:
# # escribe tu solución acá
# puts contar([1, 5, 5, 1], 5) # 2
# puts contar([2, 6, "5"], "5") # 1
# puts contar([1, "hola", 3, "mundo"], 5) # 0

# pseudocodigo
# 1- definir un método llmado contar que recibe como argumento dos parametros un array y un número
# 2- definir un arreglo dentro del método
# 3- crear un ciclo que me cuente cuantas veces aparce el elemento en mi array
# 4- retornar el valor

def counta1(array, element)
  array.rindex { |x| x == element }
end

def counta2(array, num)
  array.count(num)
end

p counta2([1, 2, 3, 3, 3, 3, 3, 4], 3)
p counta2([1, 2, 2, 2, 3, 4], 2)
p counta1([1, 2, 3, 3, 3, 3, 3, 4], 3)
p counta1(%w[a b c c d e f g], 'c')
