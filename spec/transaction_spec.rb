require 'transaction'

describe 'Transaction' do
  let(:subject) { Transaction.new(100, 100) }

  describe 'to_string' do
    it 'should respond to the to_string method' do
      expect(subject).to respond_to(:to_string)
    end

    it 'should return a row in a bank statement after deposit' do
      expect(subject.to_string).to eq '27/11/2017 || £100.00 || || £100.00'
    end

    it 'should return a row in a bank statement after withdrawal' do
      subject = Transaction.new(-100, 0)
      expect(subject.to_string).to eq '27/11/2017 || || £100.00 || £0.00'
    end
  end
end
