class Person
    def initialize
        puts "Me ejecuto siempre con el .new"
    end
end

Person.new
Person.new
Person.new

class PersonConstructor
    def initialize(name)
    puts "creando nueva persona llamada #{name}"
  end
end

PersonConstructor.new("Yony")