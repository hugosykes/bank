class Account
  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = []
  end

  def deposit(amount)
    amount >= 0 ? @balance += amount : raise("Can't deposit negative amounts!")
  end

  def withdraw(amount)
    amount >= 0 ? @balance -= amount : raise("Can't withdraw negative amounts!")
  end
end
