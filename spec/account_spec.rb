require 'account'

describe 'Account' do

  let(:subject) { Account.new }

  describe '#balance' do
    it 'should have a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

end