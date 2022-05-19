# En este ejercicio, construirá el manejo de errores para una calculadora simple.
# El objetivo es tener una calculadora funcional que devuelva una cadena con el siguiente patrón: 16 + 51 = 67,
# cuando se le proporcionen los argumentos 16, 51 y +.
class SimpleCalculator
  # Se utiliza el método para generar excepción para los simbolos de las operaciones
  UnsupportedOperation = ArgumentError

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    # Se instancia el método y se pasa el argumento donde se pregunta si lo que tiene es un entero
    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    # se crea uan variable result donde se iguala al case
    result = case operation
             # preguntamos si es suma
             when '+'
               first_operand + second_operand
             # preguntamos si es división
             when '/'
               # controlamos el error de división por cero
               begin
                 first_operand / second_operand
               rescue StandardError
                 # retornamos si es división por cero
                 return 'Division by zero is not allowed.'
               end
             # Si es multiplicación
             when  '*'
               first_operand * second_operand
             else
               # si esto no se cumple instanciamos nuevamenete el metodo de excepción
               raise UnsupportedOperation
             end
    # Psamos los argumentos del metoodo para hacer la operación 
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
