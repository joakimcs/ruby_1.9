class Account

  attr_reader :balance, :cleared_balance # accessor method 'cleared balance'
  protected :cleared_balance   # and make it protected

  def initialize(balance)
    @balance = balance
    @cleared_balance = @balance
  end

  def balance=(new_balance)
    @balance = new_balance
    @cleared_balance = new_balance
  end

  def greater_balance_than(other)
    @cleared_balance > other.cleared_balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private # The following methods are private
  def debit (account, amount)
    account.balance -= amount
  end
  def credit (account, amount)
    account.balance += amount
  end

  public
  #...
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
  #...
end

# Testing
savings = Account.new(100)
checking = Account.new(200)
trans = Transaction.new(checking, savings)
trans.transfer(100)
puts "Checking: #{checking.balance}. Savings: #{savings.balance}"
puts "Savings greater than checking? #{savings.greater_balance_than(checking)}"