require 'statement'

describe 'Statement' do
  let(:subject) { Statement.new }
  let(:transaction_one) { double :transaction, to_string: 'transaction one string' }
  let(:transaction_two) { double :transaction, to_string: 'transaction two string' }
  it 'should have a transactions array' do
    expect(subject.transactions).to eq []
  end

  describe '#add_transaction' do
    it 'should accept transactions and add them to it\'s array' do
      subject.add(transaction_one)
      expect(subject.transactions[0]).to eq transaction_one
    end
  end

  describe '#display_transactions' do
    it 'should display statement header' do
      expect { subject.display_transactions }.to output(/date || credit || debit || balance/).to_stdout      
    end

    it 'should display the list of transactions' do
      subject.add(transaction_one)
      subject.add(transaction_two)
      expect { subject.display_transactions }.to output(/transaction one string/).to_stdout
    end
  end
end