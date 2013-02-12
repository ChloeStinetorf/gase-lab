require_relative 'portfolio'

class Client
  attr_accessor :name, :balance, :portfolios

  def initialize(name, balance, portfolios)
    @name = name
    @balance = balance
    @portfolios = portfolios
  end

  def add_portfolio(name)
    @portfolios[name] = Portfolio.new(name)
  end

  def remove_portfolio(name)
    @portfolios.delete(name)
  end

  def get_portfolio_balance
    total = 0
    @portfolios.each do |n, p|
      total += p.get_stock_balance
    end
    total
  end

  def get_total_balance
    @balance + get_portfolio_balance
  end

  def sell_stock(portfolio_name, stock_name)
    s = @portfolios[portfolio_name].stocks[stock_name]
    @balance = (s.value * s.quantity) + balance
    @portfolios[portfolio_name].stocks[stock_name] = nil
    @balance
  end

  def buy_stock(portfolio_name, stock_name, quantity)
    @portfolios[portfolio_name].add_stock(stock_name, quantity)
    s = @portfolios[portfolio_name].stocks[stock_name]
    @balance = balance - (s.value * s.quantity)
    @balance
  end

  def list_account_balances
    "Cash Balance #{@balance} \nPortfolio Balances #{get_portfolio_balance} \nTotal Balance #{get_total_balance}"
  end

  def list_portfolio_balances
    portfolios_string = ""
    @portfolios.each {|n, p| portfolios_string += "#{p.name}: #{p.get_stock_balance} \n"}
    portfolios_string += "Total Portfolio Balance: #{get_portfolio_balance}"
  end


end











