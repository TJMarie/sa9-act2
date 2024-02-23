require "bank_account"
RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      deposit_acct = BankAccount.new
      deposit_acct.deposit(50)
      expect(deposit_acct.balance).to eq 50
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are
  available" do
      withdraw_enough = BankAccount.new(50)
      withdraw_enough.withdraw(25)
      expect(withdraw_enough.balance).to eq 25
    end
    it "does not change the balance if insufficient funds" do
      withdraw_not_enough = BankAccount.new(50)
      withdraw_not_enough.withdraw(100)
      expect(withdraw_not_enough.balance).to eq 50
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      current_balance = BankAccount.new(100)
      expect(current_balance.balance).to eq 100
    end
  end
end
