require 'account'

describe 'Account' do
  let(:subject) { Account.new }

  describe 'balance' do
    it 'should have a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do
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

  describe '#withdraw' do
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

  describe '#print_statement' do
    it 'should respond to print_statement method' do
      expect(subject).to respond_to :print_statement
    end

    it 'should print out the top row to explain structure' do
      expect { subject.print_statement }.to output(/date || credit || debit || balance/).to_stdout
    end

    context 'should print statement after various transactions' do
      it 'should print given statement after deposit' do
        subject.deposit(100)
        expect { subject.print_statement }.to output(/27\/11\/2017 || £100.00 || || £100.00/).to_stdout
      end

      it 'should print given statement after withdrawal' do
        subject.withdraw(100)
        expect { subject.print_statement }.to output(/27\/11\/2017 || || £100.00 || £100.00/).to_stdout
      end
    end
  end
end
