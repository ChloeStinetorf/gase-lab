require "yahoofinance"

class Stock
  attr_accessor :name, :quantity, :value

  def initialize(name, quantity)
    @name = name
    @quantity = quantity.to_i
    @value = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
  end

  def update_value
    @value = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
  end

  def update_quantity(quantity)
    @quantity = quantity
  end




end




