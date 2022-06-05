require 'date'

class Person
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @hair_color = "brown"
    end

    def name
        "#{@first_name} #{@last_name}"
    end

    def born_year
        current_year = Date.today.year
        "#{current_year - @age}"
    end

    #getters
    def first_name
        @first_name
    end

    def last_name
        @last_name
    end

    def age
        @age
    end

    def hair_color
        @hair_color
    end

    #setters
    def first_name=(value)
        @first_name = value
    end

    def last_name=(val)
        @last_name = val
    end

    def age=(val)
        @age = val
    end

    def hair_color=(val)
        @hair_color = val
    end
end

person = Person.new("Yony", "Brinez", 38)
p person
puts person.name
puts person.born_year
puts person.first_name
person.first_name = "Yony Arley"
puts person.first_name
puts person.last_name
person.last_name = "Brinez Valderrama"
puts person.last_name


# usando attr_accesor
class Dog
    attr_accessor :name # defino getters y setters
    attr_reader :color # defino getters
    attr_writer :age # defino setters

    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age
    end
end

firulais = Dog.new("firu", "brown", 2)
p firulais
firulais.name = "firulais"
p firulais
puts firulais.name
puts firulais.color
firulais.age = 5
#puts firulais.age  #error pq no tiene el getter


class Cat
    attr_reader :random_number

    def initialize
      @random_number = self.generate_random_number
    end
  
    def generate_random_number
      # generates random number
      rand(1..1000)
    end
  end
  kitty =  Cat.new
  puts kitty.random_number