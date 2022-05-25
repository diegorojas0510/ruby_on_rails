class User

  @@num_employee = 0 # variable de clase se define con @@variable

  def self.num_employee # los métodos de clase siempre inician con self. y no necesitan que se intancien la clase para poderlos llamar
   @@num_employee
  end

  def initialize(first_name, last_name, age, salary)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @salary = salary
    @@num_employee += 1
  end
  # método getter se crea con el mismo nombre de la variable de instanciaque quiero acceder y devuelve la variable de instancia
  attr_reader :first_name

  attr_reader :last_name, :age, :salary

  # un método setter se llama igual a la variable que quiero cambiar pero terminado en igual y recibe el nuevo valor y lo que hace por dentro es asignarlo a la variable de instancia
  attr_writer :first_name

  attr_writer :last_name, :age, :salary

  def change_salary(num)
    @salary = num * @salary
  end

  def name_complete
    "#{@first_name} #{@last_name}"
  end

end

employee = User.new('Diego', 'Rojas', 35, 1000000)

puts employee.first_name
puts employee.last_name
puts employee.age
puts employee.salary
puts '*' * 20
employee.first_name = 'Yoni'
employee.last_name = 'Briñez'
employee.age = '36'
employee.salary = 2000
puts '*' * 20
puts employee.name_complete
puts employee.first_name
puts employee.last_name
puts employee.age
employee.change_salary(5)
puts employee.salary

puts '*' * 20

# forma corta de clases
class Perro
  # attr_reader :raza, :edad, :nombre   # attr_reader asigna los getters para los atributos que se le indiquen lectura
  # attr_writer :raza, :edad, :nombre
  attr_accessor :raza, :edad, :nombre  # este crea los dos métodos tanto getter como setter

  def initialize(raza, edad, nombre)
    @raza = raza
    @edad = edad
    @nombre = nombre
  end
end

perro = Perro.new('Pug', 12, 'Petter')
puts perro.edad

perro.nombre = 'Kira'
puts perro.nombre

puts "/" * 30
employee2 = User.new("Juan", "Gabriel", 50, 15000)
puts employee2.first_name
puts employee2.last_name
puts employee2.age
puts employee2.salary

# llamando a la variable de clase no se necesita el new
num_employee = User.num_employee
puts num_employee

puts "!" * 30
employee3 = User.new("Juan", "Gabriel", 50, 15000)
puts employee3.first_name


