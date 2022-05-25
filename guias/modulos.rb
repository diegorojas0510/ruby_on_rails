# los modulos evitan colisiones de nombres y nos ayudan a reutilizar código.

module MyModule
  MAX_CONNECTIONS = 5

  def method_one
    'Hola Primer método'
  end

  def method_two
    'Hola Soy el segundo método'
  end

  class ThingOne
    def method1
      'Soy el método de instancia'
    end
  end

  class ThingTwo
    def self.method2
      'Soy el método de clase'
    end
  end
end

class Person
  include MyModule
  def initialize
    puts MAX_CONNECTIONS
    puts ThingOne.new
    class1 = ThingTwo.method2 # accediendo desde la clase al modulo
    puts class1
  end

  def greet
    "Hola"
  end
end

p1 = Person.new
puts p1
# puts MyModule::MAX_CONNECTIONS
# puts MyModule
# MyModule::ThingOne.new # intanciando un núevo MyModule
puts "-" * 30
# instanciando para poderlo acceder
#p.method_one # retornando métodos
#p.method_two # retornando métodos


