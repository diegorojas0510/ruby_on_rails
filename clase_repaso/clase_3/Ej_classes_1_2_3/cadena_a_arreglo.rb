# Cadena a arreglo
# Escribe un método llamado `cadena_a_arreglo` que reciba una cadena de texto y retorne un arreglo con las palabras de 
# la cadena. Puedes dividir las cadena por los espacios en blanco para encontrar las palabras.
# # escribe tu solución acá
# puts cadena_a_arreglo("Hola mundo").inspect # ["Hola", "mundo"]
# puts cadena_a_arreglo("Make it Real").inspect # ["Make", "it", "Real"]
# puts cadena_a_arreglo("").inspect # []
# **Nota:** Ruby trae un método sobre las cadenas que te permite hacer precisamente esto. Tu reto es encontrar ese 
# método y aplicarlo. Si quieres ir un paso más allá intenta separar la cadena sin utilizar ese método.
# [Ver solución](solutions/cadena_a_arreglo.rb)

# pseudocodigo
# 1- Definir un método
# 2- el método debe recibir una cadena
# 3- usar uno de los objetos de ruby para convertir la cadena a arreglo
# 4- retornar el arreglo

def array_string(text)
  text.split
  # _text = 'hola diego como estas'.scan(/\w+/)
  # _text = ' hola diego como estas'.strip
end

p array_string('Hola Diego Como Estas')
