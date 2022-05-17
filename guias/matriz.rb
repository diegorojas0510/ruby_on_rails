# las matrices se componen por la cantidad de dimensiones
# Los arreglos internos tiene que ser del mismo tamaño o los mismos elemento
# todos los elemento deben ser números
require 'matrix'
matriz = Matrix[[1, 2, 3],
                [4, 5, 6],
                [4, 5, 6]]
# imprimiendo la diagonal
matriz.each(:diagonal) do |i|
  print i
end
puts
# imprimiendo los valores superiores
matriz.each(:strict_lower) do |i|
  print i
end
puts
# ver los elemento arriba de la diagonal
matriz.each(:strict_upper) do |i|
  print i
end


#puts matriz
