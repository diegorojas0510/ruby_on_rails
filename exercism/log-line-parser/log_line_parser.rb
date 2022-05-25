class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # Se hace el split para partir el string y que inicie a partir de los : en la posición 1 esto me devuelve del mensaje [ERROR]: Invalid operation solo "Invalid operation" y se usa el strip para quitar el espacio al inicio en blanco
    @line.split(':')[1].strip 
  end

  def log_level
    # se parte la cadena a partir de los : en su posición 0, ignorando lo que esta despúes,se quitan los [] para que solamente quede el string WARNING y luego se convierte a minusculas
    @line.split(':')[0].gsub(/[\[\]]/, '').downcase
  end

  def reformat
    # se formatea para que quede primero el message y luego el log_level
    "#{message} (#{log_level})"
  end
end
