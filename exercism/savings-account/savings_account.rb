module SavingsAccount
  def self.interest_rate(balance)
    # raise 'Please implement the SavingsAccount.interest_rate method'
    if balance.negative? # se compara si el saldo es negativo
      -3.213
    elsif balance < 1000 # se comparea si el saldo es menor a 1000
      0.5
    elsif balance < 5000 # se comparea si el saldo es menor a 5000
      1.621
    else
      2.475 # si lo anterior es negativo entonces hace esto
    end
  end

  def self.annual_balance_update(balance)
    #balance.positive? ? (balance + (interest_rate(balance) / 100.0) * balance) : (balance - (interest_rate(balance) / 100.0) * balance)
    if balance.positive?
      balance + ((interest_rate(balance) / 100.0) * balance)
    else
      balance - ((interest_rate(balance) / 100.0) * balance)
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    #raise 'Please implement the SavingsAccount.years_before_desired_balance method'
    # Calcular la cantidad minima de años necesarios para alcanzar el saldo deseado
    year = 0 # variable iniciada en 0
    while current_balance < desired_balance # mientras el saldo deseado sea menor al saldo actual
      current_balance = annual_balance_update(current_balance)# se iguala el saldo actual y se pasa lo que tenga el balance anual
      year += 1 # se incrementa el año en 1
    end
    year # retorna el valor.
  end
end
