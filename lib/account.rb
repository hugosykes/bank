require_relative 'transaction'
class Account
  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = []
  end

  def deposit(amount)
    amount >= 0 ? @balance += amount : raise("Can't deposit negative amounts!")
    @log.push(Transaction.new(amount, @balance))
  end

  def withdraw(amount)
    amount >= 0 ? @balance -= amount : raise("Can't withdraw negative amounts!")
    @log.push(Transaction.new(-amount, @balance))
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @log.each { |row| puts row.to_string }
  end
end
