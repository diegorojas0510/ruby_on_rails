class BirdCount
  def self.last_week
    # raise 'Please implement the BirdCount.last_week method'
    last_week = [0, 2, 5, 3, 7, 8, 4] # retorna el valor del array
  end

  def initialize(birds_per_day)
    # raise 'Please implement the BirdCount#initialize method'
    @birds_per_day = birds_per_day # declaro una variable de clase
  end

  def yesterday
    # raise 'Please implement the BirdCount#yesterday method'
    @birds_per_day[-2] # llamo la penultima posición del array
  end

  def total
    # raise 'Please implement the BirdCount#total method'
    @birds_per_day.sum
  end

  def busy_days
    # raise 'Please implement the BirdCount#busy_days method'
    @birds_per_day.count { |x| x >= 5 } # se pasa el count a la variable de instancia para contar los que sean mayores a 5
  end

  def day_without_birds?
     #raise 'Please implement the BirdCount#day_without_birds method'
    @birds_per_day.include? 0 # Uso de operador ternario donde se pregunta si el array incluye 0
  end
end

