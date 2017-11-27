require_relative 'transaction'
require_relative 'statement'
class Account
  attr_reader :balance

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    amount >= 0 ? @balance += amount : raise("Can't deposit negative amounts!")
    @statement.add(Transaction.new(amount, @balance))
  end

  def withdraw(amount)
    amount >= 0 ? @balance -= amount : raise("Can't withdraw negative amounts!")
    @statement.add(Transaction.new(-amount, @balance))
  end

  def print_statement
    @statement.display_transactions
  end
end
