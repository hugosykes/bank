class Transaction
  def initialize(amount, balance)
    amount >= 0 ? (@credit = amount) : (@debit = amount)
    @balance = balance
  end

  def to_string
    "#{Time.now.strftime('%d/%m/%Y')} || #{amount_string(@credit)}|| #{amount_string(@debit)}|| £#{format('%.2f', @balance)}"
  end

  private

  def amount_string(amount = 0)
    amount ? "£#{format('%.2f', amount)} " : ''
  end
end
