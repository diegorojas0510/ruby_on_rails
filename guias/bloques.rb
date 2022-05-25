# def hola
#   yield # se usa para hacer el llamdo del bloque dentro de una función o método
# end
#
# hola { puts "una forma de hacer un bloque"}
#
# hola do
#   puts "Otra forma de bloque"
# end

# def hola
#   yield if block_given? # método block_given da verdadero si hay un bloque o falso si no recibe bloque y se condiciona con el if
# end
#
# hola { puts "una forma de hacer un bloque"}
# hola() # bloque sin nada

# # ---------------métodos con bloque y argumentos--------------------------------
# def hola &bloque, nombre # esto generara error ya que el argumento de bloque debe ir de ultimas
#   bloque.call if block_given? # método call para llamar al bloque y condición para que no retorne error
# end
# hola() { puts "una forma de hacer un bloque"} # los argumentos dében ir de primeras y el bloque de ultimas

# def hola(_nombre, &bloque)
#   bloque.call if block_given?
# end
#
# hola('Diego') { puts 'Hola Como estas'}

# --------------------Enviar un bloque desde un método a otro bloque de otro método------------------

def hola(&bloque)
  #otro_hola(&bloque)
  puts 'Bloque de método Hola'
  #bloque.call
end

def otro_hola(&block)
  hola(&block)
  puts 'Bloque del otro hola'
  block.call
end

hola { puts 'Hola Como estas' }
