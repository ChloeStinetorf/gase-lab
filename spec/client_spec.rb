require_relative 'spec_helper'
require_relative '../client'


describe Client do
  let(:client) {Client.new('Bob', 250_000, {} ) }


  describe "#new" do
    it "creates a client object" do
      expect(client).to_not eq nil
    end
  end

  describe "#add_portfolio" do
    it "adds a portfolio" do
      client.add_portfolio('Tech')
      expect(client.portfolios['Tech']).to_not eq nil
    end
  end

    describe "#remove_portfolio" do
    it "removes a portfolio" do
      client.add_portfolio('Tech')
      client.remove_portfolio('Tech')
      expect(client.portfolios['Tech']).to eq nil
    end
  end

   describe "#get_portfolio_balance" do
    it "gets the balance of all portfolios" do
      value = client.get_portfolio_balance
      expect(value).to_not eq nil
    end
  end

   describe "#get_total_balance" do
    it "adds stock balance to balance" do
      total_balance = client.get_total_balance
      expect(total_balance).to_not eq nil
    end
  end

    describe "#sell_stock" do
    it "adds stock value to balance then deletes stock" do
      old_balance = client.balance
      client.add_portfolio('Tech')
      client.portfolios['Tech'].add_stock('AMZN', 50)
      client.sell_stock('Tech', 'AMZN')
      expect (client.balance > old_balance)
    end
  end

  describe "#buy_stock" do
    it "subtracts stock value from balance then adds stock" do
      old_balance = client.balance
      client.add_portfolio('Tech')
      client.buy_stock('Tech', 'AMZN', 100)
      expect(client.portfolios['Tech'].stocks['AMZN'].quantity).to eq 100
    end
  end

  describe "#list_account_balances" do
    it "lists cash, stock and total balances" do
      client.add_portfolio('Tech')
      client.buy_stock('Tech', 'AMZN', 100)
      puts client.list_account_balances
      expect(client.list_account_balances).to_not eq nil
    end
  end

  describe "#list_portfolio_balances" do
    it "lists portfolio, balance and total balance of all portfolios" do
      client.add_portfolio('Tech')
      client.buy_stock('Tech', 'AMZN', 100)
      client.add_portfolio('Bank')
      client.buy_stock('Bank', 'BAC', 200)
      puts client.list_portfolio_balances
      expect(client.list_portfolio_balances).to_not eq nil
    end
  end


end












