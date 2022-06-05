# #class SopaLetras
#   #def sopa_letras(array)
#     array.each_cons(10) { |obj| p obj }
#   #end
# #end
#
# #sopa = SopaLetras.new
# sopa.sopa_letras(%w[a b c d e f g h i j k l m n ñ o p q r s t u v w x y z])
# p sopa

class GenerateAlphabetSoup
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def generate(matriz)
    # @phrase.chars
    # matriz.insert(2, @phrase)
    # matriz[0] << @phrase
    matriz.each_with_index do |position, value|
      # p "#{value} - #{position}"
      @phrase.each_with_index do |x, y|
        # p "#{y}- #{x}"
        while position == 'b'
          "#{position.insert(0, x[y])}"
         break
         end
      end
    end

  end
end

sopaletras = GenerateAlphabetSoup.new(%w[ABSTRACCION])
p sopaletras.generate(%w[a b c d e f g h i j k l m n o p q r s t u v w x y z])
# p sopaletras.palabra(%w[a b c d e f g h i j k l m n o p q r s t u v w x y z])
# class Person
#   attr_accessor :name, :last_name
#
# def initialize(name, last_name)
#     @name = name
#     @last_name = last_name
# end
#
# def greet(other_person_name)
#     "Hola #{other_person_name}, me llamo #{@name} #{@last_name}"
# end
# end
#
# #persona = Person.new('Diego', 'Rojas')
# puts persona.greet('Juan')
# puts persona.name = 'Maria'
# puts persona.greet('Carlos')
# puts persona.last_name = 'Jimenez'
# puts persona.greet('Pedro')


