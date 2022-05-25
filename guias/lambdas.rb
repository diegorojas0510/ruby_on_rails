# frozen_string_literal: true

# una lambda es una función anonima
(-> { puts 'Hola Primera forma' }).call # una forma
(-> { puts 'Hola Segunda forma' }).call # otra forma

# ----- Asignando a variables -------

saluda = -> { puts 'Hola Como estas' } # una forma
saluda.call # llamando la función

saluda = ->(nombre) { puts "Hola #{nombre}" }
saluda.call('Diego')

def test_lambda
  (->() { return 'Game Over' }).call # manda a retornar el metodo a la función y continua su camino
  puts 'Despues de la lamba'
end
puts test_lambda

def test_block
  (Proc.new { return 'Desde el Proc' }).call # desde el proc el retorna lo que esta dentro del metodo y no continua con siguiente linea
  puts 'Despues del Bloque'
end
puts test_block
