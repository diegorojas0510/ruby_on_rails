class AssemblyLine
  @@rate = 221 # variable de clase iguala a la velocidad
  def initialize(speed)
    @speed = speed
  end
  def production_rate_per_hour
    speed1 = @@rate * @speed # se crea una variable y se iguala a lo que tiene la variable de clase * la velocidad
    case @speed # se hace un case para que valide la que en caso de que valocidad
    when 1..4 # cuando el velocidad este entre 1 y 4
      speed1 * 1.0 # traemos la variable speed1 y se multiplica por el porcentaje.
    when  5..8
      speed1 * 0.9
    when 9
      speed1 * 0.8
    when 10
      speed1 * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour/60).to_i
  end
end