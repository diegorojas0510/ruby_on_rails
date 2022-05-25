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
    #raise 'Please implement the SavingsAccount.annual_balance_update method'
    interest_rate(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    #raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end
