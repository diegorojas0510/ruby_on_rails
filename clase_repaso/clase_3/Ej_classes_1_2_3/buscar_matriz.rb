# frozen_string_literal: true
# Buscar en una matriz
# Escribe un método llamado `buscar` que reciba dos argumentos: una matriz (un arreglo de arreglos) y otro argumento 
# (de cualquier tipo). El método debe retornar un arreglo con la posición donde se encuentra el segundo argumento. 
# Si no se encuentra debe retornar `nil`.
# Por ejemplo, en el siguiente arreglo:
# ruby
# [
#   ["s", "o", "l"],
#   ["b", "i", "n"]
# ]
# El elemento `s` se encuentra en la posición `[0, 0]`. El elemento `n` se encuenta en `[1, 2]`.
# escribe tu solución acá
# buscar([[1, 2], [3, 4]], 3) # [1, 0]
# buscar([[1, 2], [3, 4]], 5) # nil
# pseudocodigo
# 1-definir un método con dos parametros
# 2-parametro 1 es una matriz con los valores
# 3-parametro 2 es el valor a buscar en la matriz
# 4-realizar un ciclo para iterar sobre la matriz
# 5-dentro de esa matriz evaluar nuevamente con un cilco y sobre el array si mi número esta dentro
# 5-retornar la posicion donde se encontro el valor

require 'matrix'

def matriz(matriz, number)
  position = 0
  matriz.each_with_index do |element, index|
    # p "Dentro primero #{index}"
    element.each_with_index do |elem, ind|
      next unless elem == number 

      # p "Dentro del segundo #{index}"
      position = index, ind
      break
    end
  end
  position
end

def matriz2(matriz, number)
  position = 0
  matriz.each_with_index do |element, index|
    # p "Dentro primero #{index}"
    element.each_with_index do |elem, ind|
      next unless elem == number # next se utiliza para ingresar a la itaración de manera inmediata

      # p "Dentro del segundo #{index}"
      position = index, ind
      break
    end
  end
  position
end

def matriz3(matriz, number)
  matriz.each_with_index do |element, index|
    element.each_with_index do |elem, ind|
      return index, ind if elem == number
    end
  end
end


p matriz([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 9)
p matriz([%w[s o l], %w[b i n]], 'l')
p "*" * 50
p matriz2([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 9)
p matriz2([%w[s o l], %w[b i n]], 'l')
p "+" * 50
p matriz3([[1, 2, 3], [4, 5, 6], [7, 8, 9]], 9)
p matriz3([%w[s o l], %w[b i n]], 'l')

