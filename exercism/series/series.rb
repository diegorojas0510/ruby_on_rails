=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(digits)
    @digits = digits.chars # .chars # se utiliza chars para devolver una matriz de caracteres de str
  end

  def slices(length)
    # se eleva el error si lo que viene en length es mayor a los que tiene la variable de instancia
    if length > @digits.length
      raise ArgumentError
    end

    @digits.each_cons(length).map(&:join) # each_cons devuelve los elementos de forma iterativa para cada elemento

    # irb(main):034:0> numeros.each_cons(4){|obj| p obj} el argumento de each_cons puede variar y así mismo se inserta el número
    # [1, 2, 3, 4]
    # [2, 3, 4, 5]
    # [3, 4, 5, 6]
    # [4, 5, 6, 7]
    # [5, 6, 7, 8]
    # [6, 7, 8, 9]
    # [7, 8, 9, 10]

  end
end
