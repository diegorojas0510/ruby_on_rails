# Arreglo de posiciones
# Escribe un método llamado `posiciones_num_1` que reciba un arreglo y retorne un nuevo arreglo con las **posiciones**
# en las que aparece el número uno (1). Puedes utilizar la siguiente plantilla
## escribe tu solución acá
# puts posiciones_num_1([0, 1, 0, 1]).inspect # [1, 3]
# puts posiciones_num_1([1, 1, 1]).inspect # [0, 1, 2]
# puts posiciones_num_1([2, 3, 4]).inspect # []

# pseudocodigo
# 1- definir un método
# 2- pasar por argumento el arreglo
# 3- recorrer el arreglo
# 4- mostrar el indice de las posiciones

def positions_num_1(*array)
  array.each_with_index do |element, index|
    puts index.to_s
  end
end
positions_num_1(1, 0, 0, 1)
puts '*' * 30
positions_num_1(1, 1, 1)
puts '*' * 30
positions_num_1(2, 3, 4)

#Resultado de consola
#0
#1
#2
#3
#******************************
#0
#1
#2
#******************************
#0
#1
#2

