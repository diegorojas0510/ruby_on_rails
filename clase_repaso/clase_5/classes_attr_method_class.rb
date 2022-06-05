class Robot
    @@num_robots = 0 # attributo de clase, en este caso nos va a guardar el numero de robots

    attr_accessor :name, :date_creation
    def initialize(name)
        @name = name
        @date_creation = Time.now
        puts "num_robots es #{@@num_robots}"
        @@num_robots += 1
        puts "num_robots ahora es #{@@num_robots}"
    end

    def greeting(person_name)
        "Hi #{person_name} my name is #{name}"
    end

    def self.num_robots # metodo de clase, el nombre siempre empieza por self
        "Se han creado #{@@num_robots} Robots"
    end

    def self.class_description
        "This is a class that allow us to create a robot"
    end
end

robot = Robot.new("cualquiera")
p robot
puts robot.greeting("Yony")

puts Robot.num_robots
puts Robot.num_robots

robot2 = Robot.new("r2d2")
puts Robot.num_robots

puts Robot.class_description
puts Robot.class_description
