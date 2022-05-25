# # Buscar en arreglo
# Escribe un método llamado `buscar` que reciba dos parámetros: arreglo y otro parámetro (de cualquier tipo), y retorne
# la primera **posición** en la que se encuentra el segundo parámetro en el arreglo. Si no se encuentra debe retornar `-1`.
# Por ejemplo, en el arreglo `[1, 2, 3]` el número `3` se encuentra en la posición `2`, que es lo que retornaría el método.
# Si el arreglo es nuevamente `[1, 2, 3]` pero el segundo parámetro es `5` retornaría `-1`.
# # escribe tu solución acá
# puts buscar([1, 2, 3], 3) # 2
# puts buscar([4, 7, 2, 9, 3], 4) # 0
# puts buscar([8, 3, 54, 9, 1], 7) # -1
# puts buscar([3, 1, 4, 2, 4], 4) # 2
# puts buscar(["h", "o", "l", "a"], "l") # 2
# puts buscar(["h", "o", "l", "a"], "d") # -1

# pseudocodigo
# 1-definir un método con dos parametros
# 2-parametro 2 pasar otro de cualquier tipo
# 3-parametro 1 pasar un arreglo
# 4-realizar un ciclo donde evalue la posición del 2 parametro
# 5-dentro del ciclo hacer una condición donde me evalue si la posición existe o no y retorne un valor

# def search(number, *array)
#   if array.include? number
#     array.each_with_index do |element, index|
#       puts "#{index}"
#     end
#   else
#     -1
#   end
# end

search(2, 1, 2, 3)
