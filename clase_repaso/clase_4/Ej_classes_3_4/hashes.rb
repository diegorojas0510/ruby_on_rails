# Hashes
# Escribe un método `hash` que reciba un arreglo y retorne un hash a partir del arreglo utilizando el índice
# de cada elemento del arreglo como llave.
# # escribe tu solución acá
# puts hash([0, 1, 2, 3]) # {0=>0, 1=>1, 2=>2, 3=>3}
# puts hash([34, 925, 322]) # {0=>34, 1=>925, 2=>322}
# puts hash(["make", "it", "real"]) # {0=>"make", 1=>"it", 2=>"real"}
# puts hash([]) # {}
# pseudocodigo
# 1- crear un metodo que reciba un arreglo
# 2- crear un hash vacio
# 3- iterar el arreglo
# 4- asignar el valor del arreglo a la llave del hash
# 5- retornar el hash
# 6- imprimir el hash
# 7- imprimir el hash con una llave y un valor

def hash(arr)
  hash = {}
  arr.each_with_index do |val, index|
    hash[index] = val
  end
  hash
end

p hash(%w[0 1 2 3 4])
p hash(%w[34 925 322])
