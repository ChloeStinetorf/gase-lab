require_relative 'spec_helper'
require_relative '../stock'

describe Stock do
  let(:stock)  {Stock.new('AMZN', 0)}

  describe "#new" do
    it "creates a stock object" do
      expect(stock).to_not eq nil
    end
  end

  describe "#updates_value" do
    it "updates stock value" do
      stock.update_value
      expect(stock.value).to_not eq nil
    end
  end

  describe "#update_quantity" do
    it "updates stock quantity" do
      stock.update_quantity(50)
      expect(stock.quantity).to eq 50
    end
  end






end