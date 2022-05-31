def hello
    puts "Hola mundo"
    puts "Soy pepe"
    puts 1+3
end

hello()
hello

# si el metodo debe retornar un valor no debo poner puts ni print
# si quiero imprimir coloco el puts en el llamado del metodo
# en ruby se devuelve la ultima linea que se ejecute
def add(num1, num2)
    return "no puedo hacer la suma" if num2 > 10
    
    num1 + num2
end

puts add(5, 6)
puts add(5, 65)

# asignar valores por defecto a los parametros
def greeting(name = "Yony")
    puts "Hola #{name}"
end

greeting
greeting "Oscar"

def show_products(pepe = [])
    pepe.each {|p| puts p} if pepe.is_a? Array
end

show_products(["Arroz", "Leche"])
show_products(5)
show_products