class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions.push(transaction)
  end

  def display_transactions
    puts 'date || credit || debit || balance'
    @transactions.each { |transaction| puts transaction.to_string }
  end
end