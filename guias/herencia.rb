class Person
  @@people_count = 0 # atributo de clase
  attr_accessor :name, :people_count

  def initialize(name)
    @name = name # creamos la variable de intancia con el @
    @@people_count += 1
  end

  def greet(other_person_name)
    "Hola #{other_person_name}, me llamo #{name}"
  end

  def self.talla
    puts 'Este es un método de clase...'
  end

  def self.people_count
    @@people_count
  end
## Método para que @name pueda ser leido desde afuera
#def name
#    @name
#end
#  # Método para que @name pueda ser modificado desde afura
#def name=(name)
#    @name = name
#  end
end

puts Person.talla
person1 = Person.new('Diego')
puts person1
puts Person.people_count
Person.new('Juan')

class Human < Person
  puts 'Soy un humano heredo lo que venga de person'
end

puts '*' * 50
puts Human.name
puts Human.people_count
puts Human.talla
Human.talla


