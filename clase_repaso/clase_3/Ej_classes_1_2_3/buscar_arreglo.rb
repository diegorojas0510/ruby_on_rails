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
# 2-parametro 1 es un array con los valores
# 3-parametro 2 es el valor a buscar en el arreglo
# 4-realizar un ciclo donde evalue si en la posicion actual esta el valor buscado
# 5-retornar la posicion donde se encontro el valor

def search(array, number)
  position = 0
  array.each_with_index do |element, index|
    if element == number
      position = index
      break
    else
      position = -1
    end
  end
  position
end

def search_2(array, number)
  position = -1
  array.each_with_index do |element, index|
    position = index if element == number
  end
  position
end

def search_3(array, number)
  position = array.index(number)
  position = -1 unless position # nil
end

def matriz4(matriz, number)
  res = matriz.index(number)
  res || -1 # Si res llega a ser nil entonces devuelve -1
end

puts search_3([2, 1, 3], 7)
puts search_2([2, 1, 3], 7)
puts search([2, 1, 3], 3)

p "+" * 50

p matriz4([1, 2, 3, 4, 5, 6, 7, 8, 9], 9)
p matriz4([1, 2, 3, 4, 5, 6, 7, 8, 9], 11)


