class Person
    def greeting
        "Hola"
    end

    def call_message
        message # desde aqui si se puede llamar el metod privado
    end

    private
    def message
        "Este es un metodo privado"
    end
end

person = Person.new
puts person.greeting
puts person.call_message
