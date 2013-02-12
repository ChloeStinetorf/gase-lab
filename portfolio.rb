require_relative 'stock'

class Portfolio
  attr_accessor :name, :stocks

  def initialize(name)
    @name = name
    @stocks = {}
  end

  def add_stock(name, quantity)
    @stocks[name] = Stock.new(name, quantity)
  end

  def remove_stock(name)
    @stocks[name] = nil
  end

  def get_stock_balance
    total = 0
    @stocks.each do |n, s|
        total += s.value * s.quantity
    end
    total
  end

  def list_all_stocks
    portfolios_string = "Tech Portfolio:"
    @stocks.each {|n, s| portfolios_string += " #{s.name}"}
    portfolios_string
  end


end