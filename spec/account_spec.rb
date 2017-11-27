require 'account'

describe 'Account' do
  let(:subject) { Account.new }

  describe '#balance' do
    it 'should have a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe 'deposit' do
    it 'should respond to deposit method' do
      expect(subject).to respond_to(:deposit)
    end

    it 'should change balance by 100 when 100 is deposited' do
      expect { subject.deposit(100) }.to change { subject.balance }.by(100)
    end

    it 'should raise an error when trying to deposit a negative amount' do
      expect { subject.deposit(-100) }.to raise_error(
        "Can't deposit negative amounts!"
      )
    end
  end

  describe 'withdraw' do
    it 'should respond to the withdraw method' do
      expect(subject).to respond_to(:withdraw)
    end

    it 'should change balance by -100 when 100 is withdrawn' do
      expect { subject.withdraw(100) }.to change { subject.balance }.by(-100)
    end

    it 'should raise an error when trying to withdraw a negative amount' do
      expect { subject.withdraw(-100) }.to raise_error(
        "Can't withdraw negative amounts!"
      )
    end
  end

  describe 'log' do
    it 'should have an empty log upon initialization' do
      expect(subject.log).to eq []
    end
  end
end
