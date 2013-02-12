require_relative 'spec_helper'
require_relative '../portfolio'

describe Portfolio do
  let(:portfolio)  {Portfolio.new('Tech')}

  describe "#new" do
    it "creates a portfolio object" do
      expect(portfolio).to_not eq nil
    end
  end

  describe "#add_stock" do
    it "adds a stock" do
      portfolio.add_stock('AMZN', 50)
      expect(portfolio.stocks['AMZN']).to_not eq nil
    end
  end

  describe "#remove_stock" do
    it "removes a stock" do
      portfolio.remove_stock('AMZN')
      expect(portfolio.stocks['AMZN']).to eq nil
    end
  end

  describe "#get_stock_balance" do
    it "gets the balance of all stocks" do
      value = portfolio.get_stock_balance
      expect(value).to_not eq nil
    end
  end

  describe "#list_all_stocks" do
    it "lists all stocks in a portfolio" do
      portfolio.add_stock('AMZN', 50)
      portfolio.add_stock('BAC', 100)
      expect(portfolio.list_all_stocks).to eq "Tech Portfolio: AMZN BAC"
    end
  end



end